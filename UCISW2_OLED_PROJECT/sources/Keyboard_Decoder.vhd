----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:45:19 05/15/2024 
-- Design Name: 
-- Module Name:    Keyboard_Decoder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Keyboard_Decoder is
    Port ( PS2_DO : in  STD_LOGIC_VECTOR (7 downto 0);
           PS2_E0 : in  STD_LOGIC;
           PS2_DataReady : in  STD_LOGIC;
           PS2_F0 : in  STD_LOGIC;
           Key_out : out  STD_LOGIC_VECTOR (1 downto 0) := "11";
			  CLK : in STD_LOGIC);
end Keyboard_Decoder;

architecture RTL of Keyboard_Decoder is
begin

  process( CLK, PS2_DO, PS2_E0, PS2_DataReady, PS2_F0 )
  begin
	if rising_edge(CLK) then
		case PS2_DataReady & PS2_F0 & PS2_E0 & PS2_DO is

		when "101" & X"75" => -- K_UP
		  Key_out <= "00";

		when "101" & X"6B" => -- K_LEFT
		  Key_out <= "01";

		when "101" & X"74" => -- K_RIGHT
		  Key_out <= "10";

		when "101" & X"72" => -- K_DOWN
		  Key_out <= "11";

		when others =>	null;		 -- REST KEYS

		end case;
	end if;
  end process;

end RTL;
