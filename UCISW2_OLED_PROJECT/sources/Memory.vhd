----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:03 04/16/2024 
-- Design Name: 
-- Module Name:    Memory - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory is
    Port ( WriteAddr : in  STD_LOGIC_VECTOR (9 downto 0);
			  ReadAddr : in  STD_LOGIC_VECTOR (9 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0);
			  Data2 : out  STD_LOGIC_VECTOR (7 downto 0);
			  DataIN : in STD_LOGIC_VECTOR (7 downto 0);
			  WriteEnable : in std_logic;
			  CLK : in std_logic);
end Memory;

architecture Behavioral of Memory is
	type rom_type is array (0 to 1023) of std_logic_vector (7 downto 0);                 
	signal RAM : rom_type:= (others => X"00");
begin
	
	process (CLK, WriteEnable)
	begin
		if (rising_edge(CLK)) then
			if (WriteEnable = '1') then
				RAM(conv_integer(WriteAddr)) <= DataIN;
			end if;
		end if;
	end process;
	
	Data <= RAM(conv_integer(ReadAddr));
	Data2 <= RAM(conv_integer(WriteAddr));
	
end Behavioral;

