--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat.vhf
-- /___/   /\     Timestamp : 05/27/2024 22:15:50
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath C:/Users/Win7/Desktop/Projekty/UCISW2-OLED/UCISW2_OLED_PROJECT/sources -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Win7/Desktop/Projekty/UCISW2-OLED/UCISW2_OLED_PROJECT/schemat.vhf -w C:/Users/Win7/Desktop/Projekty/UCISW2-OLED/UCISW2_OLED_PROJECT/schemat.sch
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
   port ( btn_east    : in    std_logic; 
          btn_south   : in    std_logic; 
          Clk_50MHz   : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          LCD_E       : out   std_logic; 
          LCD_RS      : out   std_logic; 
          LCD_RW      : out   std_logic; 
          LEDGameOver : out   std_logic; 
          SF_CE       : out   std_logic; 
          LCD_D       : inout std_logic_vector (3 downto 0); 
          SCL         : inout std_logic; 
          SDA         : inout std_logic);
end schemat;

architecture BEHAVIORAL of schemat is
   attribute HU_SET     : string ;
   signal BUSY                       : std_logic;
   signal const                      : std_logic_vector (7 downto 0);
   signal DATA                       : std_logic_vector (7 downto 0);
   signal FIFO_DI                    : std_logic_vector (7 downto 0);
   signal FIFO_FULL                  : std_logic;
   signal FIFO_PUSH                  : std_logic;
   signal GO                         : std_logic;
   signal Reset                      : std_logic;
   signal XLXN_13                    : std_logic_vector (9 downto 0);
   signal XLXN_27                    : std_logic_vector (7 downto 0);
   signal XLXN_30                    : std_logic_vector (7 downto 0);
   signal XLXN_36                    : std_logic;
   signal XLXN_37                    : std_logic_vector (9 downto 0);
   signal XLXN_38                    : std_logic;
   signal XLXN_68                    : std_logic_vector (7 downto 0);
   signal XLXN_69                    : std_logic;
   signal XLXN_70                    : std_logic;
   signal XLXN_72                    : std_logic;
   signal XLXN_74                    : std_logic_vector (1 downto 0);
   signal XLXN_75                    : std_logic_vector (63 downto 0);
   signal XLXN_76                    : std_logic_vector (63 downto 0);
   signal XLXN_77                    : std_logic_vector (15 downto 0);
   signal XLXN_78                    : std_logic_vector (15 downto 0);
   signal XLXI_6_FIFO_Pop_openSignal : std_logic;
   signal XLXI_6_ReadCnt_openSignal  : std_logic_vector (3 downto 0);
   component Memory
      port ( WriteEnable : in    std_logic; 
             CLK         : in    std_logic; 
             WriteAddr   : in    std_logic_vector (9 downto 0); 
             ReadAddr    : in    std_logic_vector (9 downto 0); 
             DataIN      : in    std_logic_vector (7 downto 0); 
             Data        : out   std_logic_vector (7 downto 0); 
             Data2       : out   std_logic_vector (7 downto 0));
   end component;
   
   component OLED_Ctrl
      port ( Clk           : in    std_logic; 
             Reset         : in    std_logic; 
             I2C_FIFO_Full : in    std_logic; 
             I2C_Busy      : in    std_logic; 
             Byte          : in    std_logic_vector (7 downto 0); 
             Busy          : out   std_logic; 
             I2C_Go        : out   std_logic; 
             I2C_FIFO_Push : out   std_logic; 
             I2C_FIFO_DI   : out   std_logic_vector (7 downto 0); 
             ReadAddr      : out   std_logic_vector (9 downto 0));
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
   
   component GameModule
      port ( Clk               : in    std_logic; 
             StartButton       : in    std_logic; 
             Reset             : in    std_logic; 
             Data_IN           : in    std_logic_vector (7 downto 0); 
             Key_kbd_in        : in    std_logic_vector (1 downto 0); 
             EnableWrite       : out   std_logic; 
             Game_over_signal  : out   std_logic; 
             Addr              : out   std_logic_vector (9 downto 0); 
             Data_OUT          : out   std_logic_vector (7 downto 0); 
             Debug_LCD_Line_1  : out   std_logic_vector (63 downto 0); 
             Debug_LCD_Blank_1 : out   std_logic_vector (15 downto 0); 
             Debug_LCD_Line_2  : out   std_logic_vector (63 downto 0); 
             Debug_LCD_Blank_2 : out   std_logic_vector (15 downto 0));
   end component;
   
   component Keyboard_Decoder
      port ( PS2_E0        : in    std_logic; 
             PS2_DataReady : in    std_logic; 
             PS2_F0        : in    std_logic; 
             CLK           : in    std_logic; 
             PS2_DO        : in    std_logic_vector (7 downto 0); 
             Key_out       : out   std_logic_vector (1 downto 0));
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component LCD2x64
      port ( Line1     : in    std_logic_vector (63 downto 0); 
             Blank1    : in    std_logic_vector (15 downto 0); 
             Line2     : in    std_logic_vector (63 downto 0); 
             Blank2    : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic; 
             Reset     : in    std_logic; 
             Clk_50MHz : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_5 : label is "XLXI_5_1";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_0";
begin
   const(7 downto 0) <= x"78";
   XLXI_1 : Memory
      port map (CLK=>Clk_50MHz,
                DataIN(7 downto 0)=>XLXN_27(7 downto 0),
                ReadAddr(9 downto 0)=>XLXN_13(9 downto 0),
                WriteAddr(9 downto 0)=>XLXN_37(9 downto 0),
                WriteEnable=>XLXN_36,
                Data(7 downto 0)=>DATA(7 downto 0),
                Data2(7 downto 0)=>XLXN_30(7 downto 0));
   
   XLXI_2 : OLED_Ctrl
      port map (Byte(7 downto 0)=>DATA(7 downto 0),
                Clk=>Clk_50MHz,
                I2C_Busy=>BUSY,
                I2C_FIFO_Full=>FIFO_FULL,
                Reset=>Reset,
                Busy=>open,
                I2C_FIFO_DI(7 downto 0)=>FIFO_DI(7 downto 0),
                I2C_FIFO_Push=>FIFO_PUSH,
                I2C_Go=>GO,
                ReadAddr(9 downto 0)=>XLXN_13(9 downto 0));
   
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
                NACK=>open,
                SCL=>SCL,
                SDA=>SDA);
   
   XLXI_7 : GameModule
      port map (Clk=>Clk_50MHz,
                Data_IN(7 downto 0)=>XLXN_30(7 downto 0),
                Key_kbd_in(1 downto 0)=>XLXN_74(1 downto 0),
                Reset=>Reset,
                StartButton=>XLXN_38,
                Addr(9 downto 0)=>XLXN_37(9 downto 0),
                Data_OUT(7 downto 0)=>XLXN_27(7 downto 0),
                Debug_LCD_Blank_1(15 downto 0)=>XLXN_77(15 downto 0),
                Debug_LCD_Blank_2(15 downto 0)=>XLXN_78(15 downto 0),
                Debug_LCD_Line_1(63 downto 0)=>XLXN_75(63 downto 0),
                Debug_LCD_Line_2(63 downto 0)=>XLXN_76(63 downto 0),
                EnableWrite=>XLXN_36,
                Game_over_signal=>LEDGameOver);
   
   XLXI_8 : IFD_MXILINX_schemat
      port map (C=>Clk_50MHz,
                D=>btn_east,
                Q=>XLXN_38);
   
   XLXI_16 : Keyboard_Decoder
      port map (CLK=>Clk_50MHz,
                PS2_DataReady=>XLXN_72,
                PS2_DO(7 downto 0)=>XLXN_68(7 downto 0),
                PS2_E0=>XLXN_69,
                PS2_F0=>XLXN_70,
                Key_out(1 downto 0)=>XLXN_74(1 downto 0));
   
   XLXI_18 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_68(7 downto 0),
                DO_Rdy=>XLXN_72,
                E0=>XLXN_69,
                F0=>XLXN_70);
   
   XLXI_20 : LCD2x64
      port map (Blank1(15 downto 0)=>XLXN_77(15 downto 0),
                Blank2(15 downto 0)=>XLXN_78(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line1(63 downto 0)=>XLXN_75(63 downto 0),
                Line2(63 downto 0)=>XLXN_76(63 downto 0),
                Reset=>Reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


