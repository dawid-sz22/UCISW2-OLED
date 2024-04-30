<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_51(7:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_53" />
        <signal name="LED7" />
        <signal name="XLXN_12" />
        <signal name="btn_south" />
        <signal name="Clk_50MHz" />
        <signal name="LED0" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="LED7" />
        <port polarity="Input" name="btn_south" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="LED0" />
        <blockdef name="I2C_Master">
            <timestamp>2015-11-24T13:12:50</timestamp>
            <rect width="336" x="64" y="-512" height="572" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="464" y1="-256" y2="-256" x1="400" />
            <line x2="464" y1="-192" y2="-192" x1="400" />
            <rect width="64" x="400" y="-140" height="24" />
            <line x2="464" y1="-128" y2="-128" x1="400" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="32" y2="32" x1="400" />
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
        <blockdef name="OLED_Ctrl">
            <timestamp>2017-2-9T12:14:56</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="352" x="64" y="-192" height="376" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <line x2="480" y1="96" y2="96" x1="416" />
        </blockdef>
        <block symbolname="constant" name="XLXI_7">
            <attr value="78" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_95(7:0)" name="O" />
        </block>
        <block symbolname="I2C_Master" name="XLXI_1">
            <blockpin signalname="XLXN_21" name="Go" />
            <blockpin signalname="XLXN_95(7:0)" name="Address(7:0)" />
            <blockpin name="ReadCnt(3:0)" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin name="FIFO_Pop" />
            <blockpin signalname="XLXN_23" name="FIFO_Push" />
            <blockpin signalname="XLXN_51(7:0)" name="FIFO_DI(7:0)" />
            <blockpin name="FIFO_Empty" />
            <blockpin signalname="XLXN_53" name="FIFO_Full" />
            <blockpin name="FIFO_DO(7:0)" />
            <blockpin signalname="XLXN_12" name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_25" name="Busy" />
            <blockpin signalname="LED7" name="NACK" />
        </block>
        <block symbolname="OLED_Ctrl" name="XLXI_8">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_12" name="Reset" />
            <blockpin signalname="XLXN_53" name="I2C_FIFO_Full" />
            <blockpin signalname="XLXN_25" name="I2C_Busy" />
            <blockpin name="WriteByte" />
            <blockpin name="Byte(7:0)" />
            <blockpin signalname="XLXN_21" name="I2C_Go" />
            <blockpin signalname="XLXN_23" name="I2C_FIFO_Push" />
            <blockpin signalname="XLXN_51(7:0)" name="I2C_FIFO_DI(7:0)" />
            <blockpin signalname="LED0" name="Busy" />
        </block>
        <block symbolname="ifd" name="XLXI_3">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="XLXN_12" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SDA">
            <wire x2="3152" y1="368" y2="368" x1="2576" />
        </branch>
        <branch name="SCL">
            <wire x2="3152" y1="432" y2="432" x1="2576" />
        </branch>
        <branch name="XLXN_95(7:0)">
            <wire x2="2112" y1="432" y2="432" x1="1760" />
        </branch>
        <instance x="1616" y="400" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="2112" y1="368" y2="368" x1="1888" />
            <wire x2="1888" y1="368" y2="1168" x1="1888" />
            <wire x2="2848" y1="1168" y2="1168" x1="1888" />
            <wire x2="2848" y1="1168" y2="1456" x1="2848" />
            <wire x2="2848" y1="1456" y2="1456" x1="2608" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1824" y1="656" y2="1216" x1="1824" />
            <wire x2="2784" y1="1216" y2="1216" x1="1824" />
            <wire x2="2784" y1="1216" y2="1520" x1="2784" />
            <wire x2="2112" y1="656" y2="656" x1="1824" />
            <wire x2="2784" y1="1520" y2="1520" x1="2608" />
        </branch>
        <branch name="XLXN_51(7:0)">
            <wire x2="1760" y1="720" y2="1280" x1="1760" />
            <wire x2="2704" y1="1280" y2="1280" x1="1760" />
            <wire x2="2704" y1="1280" y2="1584" x1="2704" />
            <wire x2="2112" y1="720" y2="720" x1="1760" />
            <wire x2="2704" y1="1584" y2="1584" x1="2608" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1632" y1="1072" y2="1520" x1="1632" />
            <wire x2="2128" y1="1520" y2="1520" x1="1632" />
            <wire x2="2736" y1="1072" y2="1072" x1="1632" />
            <wire x2="2736" y1="816" y2="816" x1="2576" />
            <wire x2="2736" y1="816" y2="1072" x1="2736" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="2800" y1="1008" y2="1008" x1="1696" />
            <wire x2="1696" y1="1008" y2="1456" x1="1696" />
            <wire x2="2128" y1="1456" y2="1456" x1="1696" />
            <wire x2="2800" y1="656" y2="656" x1="2576" />
            <wire x2="2800" y1="656" y2="1008" x1="2800" />
        </branch>
        <instance x="2112" y="848" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2128" y="1616" name="XLXI_8" orien="R0">
        </instance>
        <branch name="LED7">
            <wire x2="3136" y1="880" y2="880" x1="2576" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1952" y1="2000" y2="2000" x1="1200" />
            <wire x2="2112" y1="816" y2="816" x1="1952" />
            <wire x2="1952" y1="816" y2="1712" x1="1952" />
            <wire x2="2128" y1="1712" y2="1712" x1="1952" />
            <wire x2="1952" y1="1712" y2="2000" x1="1952" />
        </branch>
        <branch name="btn_south">
            <wire x2="816" y1="2000" y2="2000" x1="416" />
        </branch>
        <iomarker fontsize="28" x="3152" y="368" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="3152" y="432" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="3136" y="880" name="LED7" orien="R0" />
        <iomarker fontsize="28" x="416" y="2000" name="btn_south" orien="R180" />
        <iomarker fontsize="28" x="432" y="2384" name="Clk_50MHz" orien="R180" />
        <instance x="816" y="2256" name="XLXI_3" orien="R0" />
        <branch name="Clk_50MHz">
            <wire x2="752" y1="2384" y2="2384" x1="432" />
            <wire x2="2000" y1="2384" y2="2384" x1="752" />
            <wire x2="816" y1="2128" y2="2128" x1="752" />
            <wire x2="752" y1="2128" y2="2384" x1="752" />
            <wire x2="2112" y1="880" y2="880" x1="2000" />
            <wire x2="2000" y1="880" y2="1776" x1="2000" />
            <wire x2="2128" y1="1776" y2="1776" x1="2000" />
            <wire x2="2000" y1="1776" y2="2384" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1712" name="LED0" orien="R0" />
        <branch name="LED0">
            <wire x2="2800" y1="1712" y2="1712" x1="2608" />
            <wire x2="3136" y1="1712" y2="1712" x1="2800" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="2604" y="2256">Test_OLED128x64</text>
        <text style="fontsize:40;fontname:Arial" x="2608" y="2336">J.Sugier 2017</text>
    </sheet>
</drawing>