--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat.vhf
-- /___/   /\     Timestamp : 05/13/2024 19:35:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/vboxuser/Desktop/UCISW2-OLED-main/UCISW2_OLED_PROJECT/schemat.vhf -w C:/Users/vboxuser/Desktop/UCISW2-OLED-main/UCISW2_OLED_PROJECT/schemat.sch
--Design Name: schemat
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity IFD_MXILINX_schemat is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end IFD_MXILINX_schemat;

architecture BEHAVIORAL of IFD_MXILINX_schemat is
   attribute BOX_TYPE         : string ;
   attribute IOB              : string ;
   attribute IOSTANDARD       : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   signal D_IN   : std_logic;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute IBUF_DELAY_VALUE of IBUF : component is "0";
   attribute IFD_DELAY_VALUE of IBUF : component is "AUTO";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   attribute IOB of I_36_15 : label is "TRUE";
begin
   I_36_15 : FDCE
   generic map( INIT => INIT)
      port map (C=>C,
                CE=>XLXN_2,
                CLR=>XLXN_1,
                D=>D_IN,
                Q=>Q);
   
   I_36_24 : IBUF
      port map (I=>D,
                O=>D_IN);
   
   I_36_26 : VCC
      port map (P=>XLXN_2);
   
   I_36_29 : GND
      port map (G=>XLXN_1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schemat is
   port ( btn_south : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          LED0      : out   std_logic; 
          LED7      : out   std_logic; 
          SCL       : inout std_logic; 
          SDA       : inout std_logic);
end schemat;

architecture BEHAVIORAL of schemat is
   attribute HU_SET     : string ;
   signal ADDR                        : std_logic_vector (9 downto 0);
   signal BUSY                        : std_logic;
   signal const                       : std_logic_vector (7 downto 0);
   signal DATA                        : std_logic_vector (7 downto 0);
   signal EN_MEMORY                   : std_logic;
   signal FIFO_DI                     : std_logic_vector (7 downto 0);
   signal FIFO_FULL                   : std_logic;
   signal FIFO_PUSH                   : std_logic;
   signal GO                          : std_logic;
   signal Reset                       : std_logic;
   signal XLXN_5                      : std_logic;
   signal XLXN_6                      : std_logic_vector (7 downto 0);
   signal XLXI_2_WriteByte_openSignal : std_logic;
   signal XLXI_6_FIFO_Pop_openSignal  : std_logic;
   signal XLXI_6_ReadCnt_openSignal   : std_logic_vector (3 downto 0);
   component Memory
      port ( CLK         : in    std_logic; 
             EN          : in    std_logic; 
             Addr        : in    std_logic_vector (9 downto 0); 
             Data        : out   std_logic_vector (7 downto 0); 
             WriteEnable : in    std_logic; 
             DataIN      : in    std_logic_vector (7 downto 0));
   end component;
   
   component OLED_Ctrl
      port ( Clk           : in    std_logic; 
             Reset         : in    std_logic; 
             WriteByte     : in    std_logic; 
             I2C_FIFO_Full : in    std_logic; 
             I2C_Busy      : in    std_logic; 
             Byte          : in    std_logic_vector (7 downto 0); 
             Busy          : out   std_logic; 
             I2C_Go        : out   std_logic; 
             I2C_FIFO_Push : out   std_logic; 
             EN_Memory     : out   std_logic; 
             I2C_FIFO_DI   : out   std_logic_vector (7 downto 0); 
             Addr          : out   std_logic_vector (9 downto 0));
   end component;
   
   component IFD_MXILINX_schemat
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component I2C_Master
      port ( Clk        : in    std_logic; 
             FIFO_Pop   : in    std_logic; 
             Reset      : in    std_logic; 
             Go         : in    std_logic; 
             FIFO_Push  : in    std_logic; 
             Address    : in    std_logic_vector (7 downto 0); 
             FIFO_DI    : in    std_logic_vector (7 downto 0); 
             ReadCnt    : in    std_logic_vector (3 downto 0); 
             NACK       : out   std_logic; 
             Busy       : out   std_logic; 
             FIFO_Empty : out   std_logic; 
             FIFO_Full  : out   std_logic; 
             FIFO_DO    : out   std_logic_vector (7 downto 0); 
             SDA        : inout std_logic; 
             SCL        : inout std_logic);
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_0";
begin
   const(7 downto 0) <= x"78";
   XLXN_5 <= '1';
   XLXN_6(7 downto 0) <= x"44";
   XLXI_1 : Memory
      port map (Addr(9 downto 0)=>ADDR(9 downto 0),
                CLK=>Clk_50MHz,
                DataIN(7 downto 0)=>XLXN_6(7 downto 0),
                EN=>EN_MEMORY,
                WriteEnable=>XLXN_5,
                Data(7 downto 0)=>DATA(7 downto 0));
   
   XLXI_2 : OLED_Ctrl
      port map (Byte(7 downto 0)=>DATA(7 downto 0),
                Clk=>Clk_50MHz,
                I2C_Busy=>BUSY,
                I2C_FIFO_Full=>FIFO_FULL,
                Reset=>Reset,
                WriteByte=>XLXI_2_WriteByte_openSignal,
                Addr(9 downto 0)=>ADDR(9 downto 0),
                Busy=>LED0,
                EN_Memory=>EN_MEMORY,
                I2C_FIFO_DI(7 downto 0)=>FIFO_DI(7 downto 0),
                I2C_FIFO_Push=>FIFO_PUSH,
                I2C_Go=>GO);
   
   XLXI_5 : IFD_MXILINX_schemat
      port map (C=>Clk_50MHz,
                D=>btn_south,
                Q=>Reset);
   
   XLXI_6 : I2C_Master
      port map (Address(7 downto 0)=>const(7 downto 0),
                Clk=>Clk_50MHz,
                FIFO_DI(7 downto 0)=>FIFO_DI(7 downto 0),
                FIFO_Pop=>XLXI_6_FIFO_Pop_openSignal,
                FIFO_Push=>FIFO_PUSH,
                Go=>GO,
                ReadCnt(3 downto 0)=>XLXI_6_ReadCnt_openSignal(3 downto 0),
                Reset=>Reset,
                Busy=>BUSY,
                FIFO_DO=>open,
                FIFO_Empty=>open,
                FIFO_Full=>FIFO_FULL,
                NACK=>LED7,
                SCL=>SCL,
                SDA=>SDA);
   
end BEHAVIORAL;

