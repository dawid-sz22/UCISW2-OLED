--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 03/19/2024 11:05:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath "C:/Users/lab/Downloads/RotaryEnc (2)" -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/testoled/top.vhf -w "C:/Users/lab/Downloads/Test_OLED126x64 (1)/top.sch"
--Design Name: top
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

entity IFD_MXILINX_top is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end IFD_MXILINX_top;

architecture BEHAVIORAL of IFD_MXILINX_top is
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

entity top is
   port ( btn_south : in    std_logic; 
          Clk_50MHz : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          SW        : in    std_logic_vector (3 downto 0); 
          LED0      : out   std_logic; 
          LED7      : out   std_logic; 
          SCL       : inout std_logic; 
          SDA       : inout std_logic);
end top;

architecture BEHAVIORAL of top is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Byte                       : std_logic_vector (7 downto 0);
   signal XLXN_51                    : std_logic_vector (7 downto 0);
   signal XLXN_53                    : std_logic;
   signal XLXN_140                   : std_logic;
   signal XLXN_141                   : std_logic;
   signal XLXN_156                   : std_logic;
   signal XLXN_158                   : std_logic;
   signal XLXN_159                   : std_logic;
   signal XLXN_161                   : std_logic;
   signal XLXN_163                   : std_logic;
   signal XLXN_164                   : std_logic_vector (7 downto 0);
   signal XLXI_1_FIFO_Pop_openSignal : std_logic;
   signal XLXI_1_ReadCnt_openSignal  : std_logic_vector (3 downto 0);
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
   
   component IFD_MXILINX_top
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component OLED_Ctrl
      port ( Clk           : in    std_logic; 
             Reset         : in    std_logic; 
             I2C_FIFO_Full : in    std_logic; 
             I2C_Busy      : in    std_logic; 
             WriteByte     : in    std_logic; 
             Byte          : in    std_logic_vector (7 downto 0); 
             I2C_Go        : out   std_logic; 
             I2C_FIFO_Push : out   std_logic; 
             I2C_FIFO_DI   : out   std_logic_vector (7 downto 0); 
             Busy          : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component RotaryEnc
      port ( ROT_A : in    std_logic; 
             ROT_B : in    std_logic; 
             RotL  : out   std_logic; 
             RotR  : out   std_logic; 
             Clk   : in    std_logic);
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_0";
begin
   XLXN_164(7 downto 0) <= x"78";
   XLXI_1 : I2C_Master
      port map (Address(7 downto 0)=>XLXN_164(7 downto 0),
                Clk=>Clk_50MHz,
                FIFO_DI(7 downto 0)=>XLXN_51(7 downto 0),
                FIFO_Pop=>XLXI_1_FIFO_Pop_openSignal,
                FIFO_Push=>XLXN_159,
                Go=>XLXN_161,
                ReadCnt(3 downto 0)=>XLXI_1_ReadCnt_openSignal(3 downto 0),
                Reset=>XLXN_163,
                Busy=>XLXN_158,
                FIFO_DO=>open,
                FIFO_Empty=>open,
                FIFO_Full=>XLXN_53,
                NACK=>LED7,
                SCL=>SCL,
                SDA=>SDA);
   
   XLXI_3 : IFD_MXILINX_top
      port map (C=>Clk_50MHz,
                D=>btn_south,
                Q=>XLXN_163);
   
   XLXI_8 : OLED_Ctrl
      port map (Byte(7 downto 0)=>Byte(7 downto 0),
                Clk=>Clk_50MHz,
                I2C_Busy=>XLXN_158,
                I2C_FIFO_Full=>XLXN_53,
                Reset=>XLXN_163,
                WriteByte=>XLXN_156,
                Busy=>LED0,
                I2C_FIFO_DI(7 downto 0)=>XLXN_51(7 downto 0),
                I2C_FIFO_Push=>XLXN_159,
                I2C_Go=>XLXN_161);
   
   XLXI_9_0 : BUF
      port map (I=>SW(0),
                O=>Byte(4));
   
   XLXI_9_1 : BUF
      port map (I=>SW(1),
                O=>Byte(5));
   
   XLXI_9_2 : BUF
      port map (I=>SW(2),
                O=>Byte(6));
   
   XLXI_9_3 : BUF
      port map (I=>SW(3),
                O=>Byte(7));
   
   XLXI_10_0 : BUF
      port map (I=>SW(0),
                O=>Byte(0));
   
   XLXI_10_1 : BUF
      port map (I=>SW(1),
                O=>Byte(1));
   
   XLXI_10_2 : BUF
      port map (I=>SW(2),
                O=>Byte(2));
   
   XLXI_10_3 : BUF
      port map (I=>SW(3),
                O=>Byte(3));
   
   XLXI_23 : OR2
      port map (I0=>XLXN_141,
                I1=>XLXN_140,
                O=>XLXN_156);
   
   XLXI_24 : RotaryEnc
      port map (Clk=>Clk_50MHz,
                ROT_A=>ROT_A,
                ROT_B=>ROT_B,
                RotL=>XLXN_140,
                RotR=>XLXN_141);
   
end BEHAVIORAL;


