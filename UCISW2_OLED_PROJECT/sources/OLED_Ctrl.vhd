library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OLED_Ctrl is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Byte : in  STD_LOGIC_VECTOR(7 downto 0);
           WriteByte : in  STD_LOGIC;
           Busy : out  STD_LOGIC;
           I2C_Go : out  STD_LOGIC;
           I2C_FIFO_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           I2C_FIFO_Push : out  STD_LOGIC;
           I2C_FIFO_Full : in   STD_LOGIC;
           I2C_Busy : in  STD_LOGIC;
			  WriteAddr : out STD_LOGIC_VECTOR (9 downto 0);
			  ReadAddr : out STD_LOGIC_VECTOR (9 downto 0);
			  EN_Write_Memory : out STD_LOGIC;
			  Data_OUT_RAM: out STD_LOGIC_VECTOR(7 downto 0));
end OLED_Ctrl;

architecture Behavioral of OLED_Ctrl is

   -- ROM with 1306 initialization bytes
   type t_byte_array is array ( NATURAL range <> ) of std_logic_vector( 7 downto 0 );
   constant ARR_LEN : NATURAL := 11; -- length of the initialization string
   constant ROM : t_byte_array( 0 to ARR_LEN - 1 ) := ( 
         -- Minimal initialization command bytes:
         X"00",            -- string prefix: commands (not data) will follow
         X"A1", X"C8",     -- set segment remap & reverse COM output scan direction
                           -- (this will rotate display upside-down; reset defaults: X"A0", X"C0")
         X"20", X"00",     -- set horizontal addressing mode (different mode can be used or, if omitted, the default page mode can be used)
         X"8D", X"14",     -- enable charge pump
         X"AF",            -- set display ON
			X"B0", X"00", X"10" -- back to 00
         );
	constant BYTES_RAM : t_byte_array( 0 to 7 ) := (
		X"11",X"22",X"33",X"44",X"55",X"66",X"77",X"88"
		);
	-- Bytes to RAM counter
	signal cntRAM : unsigned( 2 downto 0 )   := ( others => '0' );	
   -- Push counter:
   signal cntPush : unsigned( 3 downto 0 )   := ( others => '0' );

   -- FSM:
   type t_state is ( sReset,
                     sGo1, sPush1, sWait1,               -- config
                     sWaitWrite, sGo2, sSendBytes2, sPush2, sWait2    -- iteration: write data byte
                     );
   signal state, next_state : t_state;
	
	-- Licznik adresu pamiêci
	signal read_address_memory : unsigned(9 downto 0) := ( others=> '0' );
	signal write_address_memory : unsigned(9 downto 0) := ( others=> '0' );
	signal write_memory : std_logic := '0';
begin

   -- The FSM - state register
   process( Clk )
   begin
      if rising_edge( Clk ) then
         if Reset = '1' then
            state <= sReset;
         else
            state <= next_state;
         end if;
      end if;
   end process;

   -- The FSM - transition function
   process( state, cntPush, I2C_Busy, I2C_FIFO_Full, WriteByte )
   begin
      next_state <= state;  -- default

      case state is

         when sReset =>
            next_state <= sGo1;

         -- Send command stream (initialization)
         when sGo1 =>
            next_state <= sPush1;
         when sPush1 =>
            if cntPush = ARR_LEN - 1 and I2C_FIFO_Full = '0' then 
               next_state <= sWait1;
            end if;

         -- Wait for Busy = '0'
         when sWait1 =>
            if I2C_Busy = '0' then 
               next_state <= sGo2;
            end if;

         -- Wait for WriteByte input  (aktualnie niepotrzebny, gdy¿ odœwie¿amy ca³y czas)
         when sWaitWrite =>
            next_state <= sGo2;

         -- Send one data byte (with an obligatory prefix)
         when sGo2 =>
            next_state <= sSendBytes2;
				
			-- Send X"40" command
			when sSendBytes2 =>
				next_state <= sPush2;
			
			-- LOOP ROM
         when sPush2 =>
            if I2C_FIFO_Full = '1' then 
               next_state <= sWait2;
            end if;

         -- Wait for Busy = '0'
         when sWait2 =>
            if I2C_FIFO_Full = '0' then 
               next_state <= sPush2; 
            end if;
				
			-- LOOP ROM
      end case;
   end process;

   -- ROM address
   process( Clk )
   begin
      if rising_edge( Clk ) then
         if state = sReset or state = sWaitWrite then
            cntPush <= ( others => '0' );
         elsif ( state = sPush1 or state = sPush2 ) and I2C_FIFO_Full = '0' then
            cntPush <= cntPush + 1;
         end if;
      end if;
   end process;
	
	-- Address to ROM
   process( Clk )
   begin
      if rising_edge( Clk ) then
         if (state = sPush2) and I2C_FIFO_Full = '0' then
				read_address_memory <= read_address_memory + 1;
         end if;
      end if;
   end process;
	
	--Process to changing write_address
	process( Clk )
   begin
      if rising_edge( Clk ) then
         if state = sWait2 then
            write_address_memory <= write_address_memory + 1;
				-- Writing to memory bytes (repeat after 8 times/see line 37)
				-- X"11",X"22",X"33",X"44",X"55",X"66",X"77",X"88" X"11",X"22",X"33",X"44",X"55",X"66",X"77",X"88"
				cntRAM <= cntRAM + 1;	
         end if;
      end if;
   end process;

   -- Outputs
   I2C_FIFO_DI <= ROM( to_integer( cntPush ) ) when state = sPush1  else   -- initialization bytes from ROM
                  X"40" when state = sSendBytes2 else           				-- WriteByte: prefix (data byte will follow)
                  Byte;                                                    -- WriteByte: pixel mask from the port

   I2C_FIFO_Push  <= '1' when ( state = sPush1 or state = sPush2 or state = sSendBytes2) else '0';

   I2C_Go <= '1' when state = sGo1 or state = sGo2 else '0'; -- Sta³e 1 przy przesy³aniu
   
   Busy <= '0' when state = sWaitWrite  else '1';
	
	ReadAddr <= STD_LOGIC_VECTOR(read_address_memory);				-- Give read address to memory
	WriteAddr <= STD_LOGIC_VECTOR(write_address_memory);			-- Give write address to memory
	Data_OUT_RAM <= BYTES_RAM(to_integer(cntRAM));					-- Give data to save in RAM
	
	EN_Write_Memory <= '1' when state = sWait2 else '0';			-- Write to memory when OLED_CTRL is waiting for FIFO_FULL=0

end Behavioral;
