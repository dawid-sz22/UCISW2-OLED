----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:53 05/14/2024 
-- Design Name: 
-- Module Name:    GameModule - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GameModule is
    Port ( Data_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Addr : out  STD_LOGIC_VECTOR (9 downto 0);
			  EnableWrite : out STD_LOGIC;
           Clk : in  STD_LOGIC;
           StartButton : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
           Data_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  Key_kbd_in : in STD_LOGIC_VECTOR (1 downto 0);
			  Game_over_signal : out  STD_LOGIC;
			  Debug_LCD_Line_1 : out STD_LOGIC_VECTOR (63 downto 0);
			  Debug_LCD_Blank_1 : out STD_LOGIC_VECTOR (15 downto 0);
			  Debug_LCD_Line_2 : out STD_LOGIC_VECTOR (63 downto 0):= (others => '0');
			  Debug_LCD_Blank_2 : out STD_LOGIC_VECTOR (15 downto 0):= (others => '0')
			  );
end GameModule;

architecture Behavioral of GameModule is
	type t_state is (sWait, sRead, sAddressCount, sSetBit, sWrite, sGameOver, sResetValuesToDefault, sResetRAM);
	type t_direction is (up, down, right, left);
	type t_game_state is (running, collision);

   signal state, next_state : t_state;
	signal direction : t_direction := down;
	signal game_state : t_game_state := running;
	signal game_state_out : STD_LOGIC;
	signal address_memory : unsigned(9 downto 0) := ( others=> '0' );
	signal x : unsigned(6 downto 0) := (others=> '0');
	signal y : unsigned(5 downto 0) := (others=> '0');
	signal x_help : unsigned(6 downto 0) := (others=> '0');
	signal y_help : unsigned(5 downto 0) := (others=> '0');
	signal counter_delay : unsigned(23 downto 0) := (others=> '0');
	signal data_signal : STD_LOGIC_VECTOR ( 7 downto 0);

begin
	
	-- The FSM - state register
   process( Clk, Reset )
   begin
      if rising_edge( Clk ) then
			if (Reset = '1') then
				state <= sResetValuesToDefault;	-- Reset game
			else
				state <= next_state;	
			end if;
      end if;
   end process;
	
	-- FSM
   process( state, counter_delay, address_memory, StartButton, game_state)
   begin
      next_state <= state;  -- default

      case state is
		
			when sWait =>
				if (counter_delay = X"989680") then	-- 20ms 0F4240 delay (RAM reading from 0->1023, lasts in testbench ~25ms) 200ms - x"989680"
					next_state <= sAddressCount;
				end if;
			
			when sAddressCount =>
				if (game_state = running) then
					next_state <= sRead;
				else
					next_state <= sGameOver;
				end if;
				
			when sRead =>
				next_state <= sSetBit;
			
			when sSetBit =>
				next_state <= sWrite;
				
			when sWrite =>
				next_state <= sWait;
				
			when sGameOver =>
				if (StartButton = '1') then
					next_state <= sResetValuesToDefault;
				end if;
				
			when sResetValuesToDefault =>	
				next_state <= sResetRAM;
				
			when sResetRAM =>	--TODO: Check if 0 and 1023 refresh in memory
				if (address_memory = "1111111111") then
					next_state <= sWait;
				end if;
				
      end case;
   end process;
	
	-- COUNT DELAY
	process(Clk, state, game_state)
	begin
		if rising_edge(Clk) then
			if (state = sWait) then
				counter_delay <= counter_delay + 1;
			else
				counter_delay <= X"000000";
			end if;
		end if;
	end process;
	
	-- ENABLE WRITING
	process(Clk, state)
	begin
		if rising_edge(Clk) then
			if (state = sWrite) or (state = sResetRAM) then
				EnableWrite <= '1';
			else
				EnableWrite <= '0';
			end if;
		end if;
	end process;
	
	-- KEY FROM KEYBOARD / DIRECTION CHANGE
	process(Clk, Key_kbd_in)
	begin
		if rising_edge(Clk) then
			if (Key_kbd_in = "00") then		-- K_UP
				direction <= up;
			elsif (Key_kbd_in = "01") then	-- K_LEFT
				direction <= left;
			elsif (Key_kbd_in = "10") then	-- K_RIGHT
				direction <= right;
			elsif (Key_kbd_in = "11") then	-- K_DOWN
				direction <= down;
			end if;
		end if;
	end process;
	
	-- CHECK COLLISION / COUNT ADDRESS_MEMORY / GAME_OVER / CLEAR SCREEN
	process(Clk, direction, x, y)
	begin
		if rising_edge(Clk) then
			if (state = sAddressCount) then
				if (direction = up) then
					if (y = "000000") then
						game_state <= collision;
					else
						address_memory <= y_help(5 downto 3) & x_help;
						y <= y - 1;
					end if;
				elsif (direction = down) then
					if (y = "111111") then
						game_state <= collision;
					else
						address_memory <= y_help(5 downto 3) & x_help;
						y <= y + 1;
					end if;
				elsif (direction = right) then
					if (x = "1111111") then
						game_state <= collision;
					else
						address_memory <= y_help(5 downto 3) & x_help;
						x <= x + 1;
					end if;
				else	-- left
					if (x = "0000000") then
						game_state <= collision;
					else
						address_memory <= y_help(5 downto 3) & x_help;
						x <= x - 1;
					end if;
				end if; 
			elsif (state = sResetValuesToDefault) then
				x <= "0000000";									-- BACK TO START
				y <= "000000";
				address_memory <= ( others=> '0' );			-- CLEAR SCREEN
				game_state <= running;
			elsif (state = sResetRAM) then 					-- GO THROUGH ALL RAM TO CLEAR
				address_memory <= address_memory + 1;
			end if;
		end if;
	end process;
	
	-- SET BIT IN SPECIFIC BYTE
	process(Clk, state)
	begin
		if rising_edge(Clk) then
			if (state = sRead) then
				data_signal <= Data_IN;
			elsif (state = sSetBit) then
				data_signal(to_integer(y(2 downto 0))) <= '1';
			elsif (state = sResetValuesToDefault) then
				data_signal <= X"00";
			end if;
		end if;
	end process;
	
	-- ADDR TO READ (ASYNC)
	Addr <= STD_LOGIC_VECTOR(address_memory);
	
	-- DATA TO WRITE (SYNC, ENABLED BY ENABLE_WRITE)
	Data_OUT <= data_signal;
	
	-- GAME STATE ON LED
	game_state_out <= '1' when (state = sGameOver) else '0';
	Game_over_signal <= game_state_out;
	
	-- DEBUG ON LCD (4 BITS -> 1 DIGIT IN HEX)
	Debug_LCD_Line_1 <= "0" & STD_LOGIC_VECTOR(x) & X"0" & "00" & STD_LOGIC_VECTOR(y) & X"0" & "00" & Key_kbd_in & X"0" & "000" & game_state_out & X"0000000";
	Debug_LCD_Blank_1 <= "1101101010000000";
	
	x_help <= (x+1) when direction = right else (x-1) when direction = left else x;
	y_help <= (y+1) when direction = down else (y-1) when direction = up else y;

end Behavioral;

