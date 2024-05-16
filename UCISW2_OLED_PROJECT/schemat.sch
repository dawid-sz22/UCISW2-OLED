<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="GO" />
        <signal name="FIFO_PUSH" />
        <signal name="FIFO_DI(7:0)" />
        <signal name="BUSY" />
        <signal name="FIFO_FULL" />
        <signal name="DATA(7:0)" />
        <signal name="LED0" />
        <signal name="Reset" />
        <signal name="btn_south" />
        <signal name="const(7:0)" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="LED7" />
        <signal name="XLXN_13(9:0)" />
        <signal name="XLXN_27(7:0)" />
        <signal name="XLXN_30(7:0)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37(9:0)" />
        <signal name="XLXN_38" />
        <signal name="btn_east" />
        <signal name="XLXN_68(7:0)" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_74(2:0)" />
        <signal name="LED3" />
        <signal name="LED4" />
        <signal name="LED5" />
        <signal name="LED6" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="btn_south" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="LED7" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="btn_east" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="LED3" />
        <port polarity="Output" name="LED4" />
        <port polarity="Output" name="LED5" />
        <port polarity="Output" name="LED6" />
        <blockdef name="Memory">
            <timestamp>2024-5-14T8:54:56</timestamp>
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="512" />
        </blockdef>
        <blockdef name="OLED_Ctrl">
            <timestamp>2024-5-15T20:57:50</timestamp>
            <rect width="64" x="416" y="212" height="24" />
            <line x2="480" y1="224" y2="224" x1="416" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="352" x="64" y="-384" height="768" />
        </blockdef>
        <blockdef name="I2C_Master">
            <timestamp>2024-4-29T22:1:26</timestamp>
            <rect width="304" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="GameModule">
            <timestamp>2024-5-16T8:23:27</timestamp>
            <line x2="432" y1="352" y2="352" x1="368" />
            <line x2="432" y1="224" y2="224" x1="368" />
            <line x2="432" y1="288" y2="288" x1="368" />
            <line x2="432" y1="160" y2="160" x1="368" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-192" height="576" />
        </blockdef>
        <blockdef name="Keyboard_Decoder">
            <timestamp>2024-5-15T20:57:53</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2024-5-15T19:48:59</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="OLED_Ctrl" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="FIFO_FULL" name="I2C_FIFO_Full" />
            <blockpin signalname="BUSY" name="I2C_Busy" />
            <blockpin signalname="DATA(7:0)" name="Byte(7:0)" />
            <blockpin signalname="LED0" name="Busy" />
            <blockpin signalname="GO" name="I2C_Go" />
            <blockpin signalname="FIFO_PUSH" name="I2C_FIFO_Push" />
            <blockpin signalname="FIFO_DI(7:0)" name="I2C_FIFO_DI(7:0)" />
            <blockpin signalname="XLXN_13(9:0)" name="ReadAddr(9:0)" />
        </block>
        <block symbolname="constant" name="constant2">
            <attr value="78" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="const(7:0)" name="O" />
        </block>
        <block symbolname="I2C_Master" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin name="FIFO_Pop" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="GO" name="Go" />
            <blockpin signalname="FIFO_PUSH" name="FIFO_Push" />
            <blockpin signalname="const(7:0)" name="Address(7:0)" />
            <blockpin signalname="FIFO_DI(7:0)" name="FIFO_DI(7:0)" />
            <blockpin name="ReadCnt(3:0)" />
            <blockpin signalname="LED7" name="NACK" />
            <blockpin signalname="BUSY" name="Busy" />
            <blockpin name="FIFO_Empty" />
            <blockpin signalname="FIFO_FULL" name="FIFO_Full" />
            <blockpin name="FIFO_DO(7:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
        </block>
        <block symbolname="Memory" name="XLXI_1">
            <blockpin signalname="XLXN_36" name="WriteEnable" />
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="XLXN_37(9:0)" name="WriteAddr(9:0)" />
            <blockpin signalname="XLXN_13(9:0)" name="ReadAddr(9:0)" />
            <blockpin signalname="XLXN_27(7:0)" name="DataIN(7:0)" />
            <blockpin signalname="DATA(7:0)" name="Data(7:0)" />
            <blockpin signalname="XLXN_30(7:0)" name="Data2(7:0)" />
        </block>
        <block symbolname="GameModule" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_38" name="StartButton" />
            <blockpin signalname="XLXN_30(7:0)" name="Data_IN(7:0)" />
            <blockpin signalname="XLXN_74(2:0)" name="Key_kbd_in(2:0)" />
            <blockpin signalname="XLXN_36" name="EnableWrite" />
            <blockpin signalname="LED4" name="Key_0" />
            <blockpin signalname="LED5" name="Key_1" />
            <blockpin signalname="LED3" name="Game_over_signal" />
            <blockpin signalname="XLXN_37(9:0)" name="Addr(9:0)" />
            <blockpin signalname="XLXN_27(7:0)" name="Data_OUT(7:0)" />
            <blockpin signalname="LED6" name="Key_2" />
        </block>
        <block symbolname="ifd" name="XLXI_8">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="btn_east" name="D" />
            <blockpin signalname="XLXN_38" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="Reset" name="Q" />
        </block>
        <block symbolname="Keyboard_Decoder" name="XLXI_16">
            <blockpin signalname="XLXN_69" name="PS2_E0" />
            <blockpin signalname="XLXN_72" name="PS2_DataReady" />
            <blockpin signalname="XLXN_70" name="PS2_F0" />
            <blockpin signalname="XLXN_68(7:0)" name="PS2_DO(7:0)" />
            <blockpin signalname="XLXN_74(2:0)" name="Key_out(2:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_18">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_69" name="E0" />
            <blockpin signalname="XLXN_70" name="F0" />
            <blockpin signalname="XLXN_72" name="DO_Rdy" />
            <blockpin signalname="XLXN_68(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="3568" y="1328" name="XLXI_2" orien="R0">
        </instance>
        <branch name="GO">
            <wire x2="3376" y1="480" y2="864" x1="3376" />
            <wire x2="4096" y1="864" y2="864" x1="3376" />
            <wire x2="4096" y1="864" y2="1040" x1="4096" />
            <wire x2="3600" y1="480" y2="480" x1="3376" />
            <wire x2="4096" y1="1040" y2="1040" x1="4048" />
        </branch>
        <branch name="FIFO_PUSH">
            <wire x2="3392" y1="544" y2="848" x1="3392" />
            <wire x2="4112" y1="848" y2="848" x1="3392" />
            <wire x2="4112" y1="848" y2="1104" x1="4112" />
            <wire x2="3600" y1="544" y2="544" x1="3392" />
            <wire x2="4112" y1="1104" y2="1104" x1="4048" />
        </branch>
        <branch name="FIFO_DI(7:0)">
            <wire x2="3408" y1="672" y2="832" x1="3408" />
            <wire x2="4128" y1="832" y2="832" x1="3408" />
            <wire x2="4128" y1="832" y2="1232" x1="4128" />
            <wire x2="3600" y1="672" y2="672" x1="3408" />
            <wire x2="4128" y1="1232" y2="1232" x1="4048" />
        </branch>
        <branch name="BUSY">
            <wire x2="3424" y1="784" y2="1232" x1="3424" />
            <wire x2="3568" y1="1232" y2="1232" x1="3424" />
            <wire x2="4128" y1="784" y2="784" x1="3424" />
            <wire x2="4128" y1="352" y2="352" x1="4032" />
            <wire x2="4128" y1="352" y2="784" x1="4128" />
        </branch>
        <branch name="FIFO_FULL">
            <wire x2="3456" y1="800" y2="1424" x1="3456" />
            <wire x2="3568" y1="1424" y2="1424" x1="3456" />
            <wire x2="4192" y1="800" y2="800" x1="3456" />
            <wire x2="4192" y1="480" y2="480" x1="4032" />
            <wire x2="4192" y1="480" y2="800" x1="4192" />
        </branch>
        <branch name="DATA(7:0)">
            <wire x2="3552" y1="880" y2="1296" x1="3552" />
            <wire x2="3568" y1="1296" y2="1296" x1="3552" />
            <wire x2="4208" y1="880" y2="880" x1="3552" />
            <wire x2="4208" y1="880" y2="2032" x1="4208" />
            <wire x2="4208" y1="2032" y2="2032" x1="4048" />
        </branch>
        <branch name="LED0">
            <wire x2="4544" y1="976" y2="976" x1="4048" />
        </branch>
        <branch name="Reset">
            <wire x2="2976" y1="1328" y2="1328" x1="2640" />
            <wire x2="2976" y1="416" y2="1040" x1="2976" />
            <wire x2="3568" y1="1040" y2="1040" x1="2976" />
            <wire x2="2976" y1="1040" y2="1328" x1="2976" />
            <wire x2="3600" y1="416" y2="416" x1="2976" />
        </branch>
        <branch name="btn_south">
            <wire x2="2256" y1="1328" y2="1328" x1="2160" />
        </branch>
        <instance x="2848" y="256" name="constant2" orien="R0">
        </instance>
        <instance x="3600" y="768" name="XLXI_6" orien="R0">
        </instance>
        <branch name="const(7:0)">
            <wire x2="3104" y1="288" y2="288" x1="2992" />
            <wire x2="3104" y1="288" y2="608" x1="3104" />
            <wire x2="3600" y1="608" y2="608" x1="3104" />
        </branch>
        <branch name="SDA">
            <wire x2="4512" y1="608" y2="608" x1="4032" />
        </branch>
        <branch name="SCL">
            <wire x2="4512" y1="672" y2="672" x1="4032" />
        </branch>
        <branch name="LED7">
            <wire x2="4544" y1="288" y2="288" x1="4032" />
        </branch>
        <branch name="XLXN_13(9:0)">
            <wire x2="3664" y1="2416" y2="2416" x1="3648" />
            <wire x2="3648" y1="2416" y2="2576" x1="3648" />
            <wire x2="4176" y1="2576" y2="2576" x1="3648" />
            <wire x2="4176" y1="1552" y2="1552" x1="4048" />
            <wire x2="4176" y1="1552" y2="2576" x1="4176" />
        </branch>
        <instance x="3664" y="2192" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_27(7:0)">
            <wire x2="3424" y1="2464" y2="2464" x1="3216" />
            <wire x2="3424" y1="2288" y2="2464" x1="3424" />
            <wire x2="3664" y1="2288" y2="2288" x1="3424" />
        </branch>
        <branch name="XLXN_30(7:0)">
            <wire x2="2784" y1="2464" y2="2464" x1="2720" />
            <wire x2="2720" y1="2464" y2="2688" x1="2720" />
            <wire x2="4064" y1="2688" y2="2688" x1="2720" />
            <wire x2="4064" y1="2480" y2="2480" x1="4048" />
            <wire x2="4064" y1="2480" y2="2688" x1="4064" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="2720" y1="2064" y2="2064" x1="816" />
            <wire x2="3152" y1="2064" y2="2064" x1="2720" />
            <wire x2="2720" y1="2064" y2="2336" x1="2720" />
            <wire x2="2784" y1="2336" y2="2336" x1="2720" />
            <wire x2="816" y1="2064" y2="2496" x1="816" />
            <wire x2="816" y1="2496" y2="2560" x1="816" />
            <wire x2="896" y1="2560" y2="2560" x1="816" />
            <wire x2="896" y1="2496" y2="2496" x1="816" />
            <wire x2="2160" y1="1456" y2="1584" x1="2160" />
            <wire x2="3200" y1="1584" y2="1584" x1="2160" />
            <wire x2="3200" y1="1584" y2="1696" x1="3200" />
            <wire x2="3424" y1="1696" y2="1696" x1="3200" />
            <wire x2="3424" y1="1696" y2="2032" x1="3424" />
            <wire x2="3664" y1="2032" y2="2032" x1="3424" />
            <wire x2="2160" y1="1584" y2="2992" x1="2160" />
            <wire x2="2288" y1="2992" y2="2992" x1="2160" />
            <wire x2="2256" y1="1456" y2="1456" x1="2160" />
            <wire x2="3152" y1="1696" y2="1696" x1="3104" />
            <wire x2="3200" y1="1696" y2="1696" x1="3152" />
            <wire x2="3152" y1="1696" y2="2064" x1="3152" />
            <wire x2="3200" y1="288" y2="976" x1="3200" />
            <wire x2="3568" y1="976" y2="976" x1="3200" />
            <wire x2="3200" y1="976" y2="1584" x1="3200" />
            <wire x2="3600" y1="288" y2="288" x1="3200" />
        </branch>
        <instance x="2784" y="2496" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="3408" y1="2336" y2="2336" x1="3216" />
            <wire x2="3408" y1="2224" y2="2336" x1="3408" />
            <wire x2="3664" y1="2224" y2="2224" x1="3408" />
        </branch>
        <branch name="XLXN_37(9:0)">
            <wire x2="3440" y1="2400" y2="2400" x1="3216" />
            <wire x2="3440" y1="2352" y2="2400" x1="3440" />
            <wire x2="3664" y1="2352" y2="2352" x1="3440" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2768" y1="2864" y2="2864" x1="2672" />
            <wire x2="2784" y1="2528" y2="2528" x1="2768" />
            <wire x2="2768" y1="2528" y2="2864" x1="2768" />
        </branch>
        <instance x="2256" y="1584" name="XLXI_5" orien="R0" />
        <branch name="btn_east">
            <wire x2="2288" y1="2864" y2="2864" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1696" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="4544" y="976" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="2160" y="1328" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="4512" y="608" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="4512" y="672" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="4544" y="288" name="LED7" orien="R0" />
        <instance x="2288" y="3120" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="2080" y="2864" name="btn_east" orien="R180" />
        <instance x="896" y="2592" name="XLXI_18" orien="R0">
        </instance>
        <instance x="1424" y="2592" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_68(7:0)">
            <wire x2="1344" y1="2368" y2="2368" x1="1280" />
            <wire x2="1344" y1="2368" y2="2560" x1="1344" />
            <wire x2="1424" y1="2560" y2="2560" x1="1344" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="1360" y1="2432" y2="2432" x1="1280" />
            <wire x2="1360" y1="2368" y2="2432" x1="1360" />
            <wire x2="1424" y1="2368" y2="2368" x1="1360" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="1424" y1="2496" y2="2496" x1="1280" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="1328" y1="2560" y2="2560" x1="1280" />
            <wire x2="1328" y1="2512" y2="2560" x1="1328" />
            <wire x2="1408" y1="2512" y2="2512" x1="1328" />
            <wire x2="1408" y1="2432" y2="2512" x1="1408" />
            <wire x2="1424" y1="2432" y2="2432" x1="1408" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="896" y1="2368" y2="2368" x1="592" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="896" y1="2432" y2="2432" x1="592" />
        </branch>
        <iomarker fontsize="28" x="592" y="2368" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="592" y="2432" name="PS2_Data" orien="R180" />
        <branch name="XLXN_74(2:0)">
            <wire x2="2320" y1="2368" y2="2368" x1="1872" />
            <wire x2="2320" y1="2368" y2="2592" x1="2320" />
            <wire x2="2784" y1="2592" y2="2592" x1="2320" />
        </branch>
        <branch name="LED3">
            <wire x2="3472" y1="2656" y2="2656" x1="3216" />
            <wire x2="3472" y1="2656" y2="2960" x1="3472" />
        </branch>
        <branch name="LED4">
            <wire x2="3360" y1="2720" y2="2720" x1="3216" />
            <wire x2="3360" y1="2720" y2="2960" x1="3360" />
        </branch>
        <branch name="LED5">
            <wire x2="3232" y1="2784" y2="2784" x1="3216" />
            <wire x2="3280" y1="2784" y2="2784" x1="3232" />
            <wire x2="3280" y1="2784" y2="2960" x1="3280" />
        </branch>
        <iomarker fontsize="28" x="3472" y="2960" name="LED3" orien="R90" />
        <iomarker fontsize="28" x="3280" y="2960" name="LED5" orien="R90" />
        <iomarker fontsize="28" x="3360" y="2960" name="LED4" orien="R90" />
        <branch name="LED6">
            <wire x2="3232" y1="2848" y2="2848" x1="3216" />
            <wire x2="3232" y1="2848" y2="2960" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2960" name="LED6" orien="R90" />
    </sheet>
</drawing>