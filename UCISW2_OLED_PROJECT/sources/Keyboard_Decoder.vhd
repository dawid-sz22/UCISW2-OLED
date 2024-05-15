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
           Key_out : out  STD_LOGIC_VECTOR (2 downto 0));
end Keyboard_Decoder;

architecture RTL of Keyboard_Decoder is
begin

  process( PS2_DO, PS2_E0, PS2_DataReady, PS2_F0 )
  begin
    case PS2_DataReady & PS2_F0 & PS2_E0 & PS2_DO is

      when "101" & X"48" => -- K_UP
        Key_out <= "000";

      when "101" & X"4B" => -- K_LEFT
        Key_out <= "001";

      when "101" & X"4D" => -- K_RIGHT
        Key_out <= "010";

      when "101" & X"50" => -- K_DOWN
        Key_out <= "011";

      when others =>			 -- REST KEYS
        Key_out <= "111";

    end case;
  end process;

end RTL;
