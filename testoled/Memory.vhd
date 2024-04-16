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
    Port ( Addr : in  STD_LOGIC_VECTOR (9 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0));
end Memory;

architecture Behavioral of Memory is
	type rom_type is array (1023 downto 0) of std_logic_vector (7 downto 0);                 
	signal ROM : rom_type:= (X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"FF", others => X"00");
	signal data_out : std_logic_vector(7 downto 0);
begin
	data_out <= ROM(conv_integer(Addr));
	
	Data <= data_out;


end Behavioral;

