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
           Data_OUT : out  STD_LOGIC_VECTOR (7 downto 0));
end GameModule;

architecture Behavioral of GameModule is
	type t_state is (sWait, sRead, sSetBit, sWrite, sGame_over);
	type t_direction is (up, down, right, left);
	type t_game_state is (running, collision);

   signal state, next_state : t_state;
	signal direction : t_direction := right;
	signal game_state : t_game_state := running;

	-- Address memory
	signal address_memory : unsigned(9 downto 0) := ( others=> '0' );
	signal x : unsigned(6 downto 0) := (others=> '0');
	signal y : unsigned(5 downto 0) := (others=> '0');
	signal counter_delay : unsigned(23 downto 0) := (others=> '0');
	signal data_signal : STD_LOGIC_VECTOR ( 7 downto 0);

begin
	
	-- The FSM - state register
   process( Clk )
   begin
      if rising_edge( Clk ) then
			state <= next_state;
      end if;
   end process;
	
	-- FSM
   process( state, counter_delay )
   begin
      next_state <= state;  -- default

      case state is
		
			when sWait =>
				if (counter_delay = X"0186A0") then	-- 2ms delay (RAM reading from 0->1023, lasts in testbench ~25ms)
					next_state <= sRead;
				end if;
				
			when sRead =>
				next_state <= sSetBit;
			
			when sSetBit =>
				if (game_state = running) then
					next_state <= sWrite;
				else
					next_state <= sGame_over;
				end if;
			when sWrite =>
				next_state <= sWait;
				
			when sGame_over => -- TODO: Refresh RAM to X"00", x->0, y->0, go to state sWait or sth else
				next_state <= sWait;

      end case;
   end process;
	
	process(Clk)
	begin
		if rising_edge(Clk) then
			if (state = sWait) then
				counter_delay <= counter_delay + 1;
			else
				counter_delay <= X"000000";
			end if;
		end if;
	end process;
	
	process(Clk)
	begin
		if rising_edge(Clk) then
			if (state = sWait) then
				EnableWrite <= '0';
			elsif (state = sWrite) then
				EnableWrite <= '1';
			end if;
		end if;
	end process;
	
	process(Clk)
	begin
		if rising_edge(Clk) then
			if (state = sRead) then
				data_signal <= Data_IN;
			elsif (state = sSetBit) then
				data_signal(to_integer(y(2 downto 0))) <= '1';
				data_signal <= X"FF";
			end if;
		end if;
	end process;
	
	process(Clk)
	begin
		if rising_edge(Clk) then
			if (state = sRead) then
				if (direction = up) then
					if (y = "000000") then
						game_state <= collision;
					else
						address_memory <= resize((to_integer(y(5 downto 3)) - 1) * 128 + (x), address_memory'length);
						y <= y - 1;
					end if;
				elsif (direction = down) then
					if (y = "111111") then
						game_state <= collision;
					else
						address_memory <= resize((to_integer(y(5 downto 3)) + 1) * 128 + (x), address_memory'length);
						y <= y + 1;
					end if;
				elsif (direction = right) then
					if (x = "1111111") then
						game_state <= collision;
					else
						address_memory <= resize(to_integer(y(5 downto 3)) * 128 + (x + 1), address_memory'length);
						x <= x + 1;
					end if;
				else -- left
					if (x = "0000000") then
						game_state <= collision;
					else
						address_memory <= resize(to_integer(y(5 downto 3)) * 128 + (x - 1), address_memory'length);
						x <= x - 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	Addr <= STD_LOGIC_VECTOR(address_memory);
	Data_OUT <= STD_LOGIC_VECTOR(data_signal);

end Behavioral;

