<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="GO" />
        <signal name="FIFO_PUSH" />
        <signal name="FIFO_DI(7:0)" />
        <signal name="BUSY" />
        <signal name="FIFO_FULL" />
        <signal name="DATA(7:0)" />
        <signal name="ADDR(9:0)" />
        <signal name="EN_MEMORY" />
        <signal name="LED0" />
        <signal name="Reset" />
        <signal name="btn_south" />
        <signal name="const(7:0)" />
        <signal name="SDA" />
        <signal name="SCL" />
        <signal name="LED7" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="btn_south" />
        <port polarity="BiDirectional" name="SDA" />
        <port polarity="BiDirectional" name="SCL" />
        <port polarity="Output" name="LED7" />
        <blockdef name="Memory">
            <timestamp>2024-4-29T20:4:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="OLED_Ctrl">
            <timestamp>2024-4-29T22:1:22</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="352" x="64" y="-384" height="512" />
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
        <block symbolname="Memory" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="EN_MEMORY" name="EN" />
            <blockpin signalname="ADDR(9:0)" name="Addr(9:0)" />
            <blockpin signalname="DATA(7:0)" name="Data(7:0)" />
        </block>
        <block symbolname="OLED_Ctrl" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin name="WriteByte" />
            <blockpin signalname="FIFO_FULL" name="I2C_FIFO_Full" />
            <blockpin signalname="BUSY" name="I2C_Busy" />
            <blockpin signalname="DATA(7:0)" name="Byte(7:0)" />
            <blockpin signalname="LED0" name="Busy" />
            <blockpin signalname="GO" name="I2C_Go" />
            <blockpin signalname="FIFO_PUSH" name="I2C_FIFO_Push" />
            <blockpin signalname="EN_MEMORY" name="EN_Memory" />
            <blockpin signalname="FIFO_DI(7:0)" name="I2C_FIFO_DI(7:0)" />
            <blockpin signalname="ADDR(9:0)" name="Addr(9:0)" />
        </block>
        <block symbolname="ifd" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="C" />
            <blockpin signalname="btn_south" name="D" />
            <blockpin signalname="Reset" name="Q" />
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
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1264" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1616" y="1792" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="368" y1="1392" y2="1392" x1="272" />
            <wire x2="272" y1="1392" y2="1520" x1="272" />
            <wire x2="1216" y1="1520" y2="1520" x1="272" />
            <wire x2="1216" y1="1520" y2="1632" x1="1216" />
            <wire x2="1616" y1="1632" y2="1632" x1="1216" />
            <wire x2="1216" y1="1632" y2="1632" x1="1120" />
            <wire x2="1216" y1="224" y2="912" x1="1216" />
            <wire x2="1584" y1="912" y2="912" x1="1216" />
            <wire x2="1216" y1="912" y2="1520" x1="1216" />
            <wire x2="1616" y1="224" y2="224" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1632" name="Clk_50MHz" orien="R180" />
        <branch name="GO">
            <wire x2="1392" y1="416" y2="800" x1="1392" />
            <wire x2="2112" y1="800" y2="800" x1="1392" />
            <wire x2="2112" y1="800" y2="976" x1="2112" />
            <wire x2="1616" y1="416" y2="416" x1="1392" />
            <wire x2="2112" y1="976" y2="976" x1="2064" />
        </branch>
        <branch name="FIFO_PUSH">
            <wire x2="1408" y1="480" y2="784" x1="1408" />
            <wire x2="2128" y1="784" y2="784" x1="1408" />
            <wire x2="2128" y1="784" y2="1040" x1="2128" />
            <wire x2="1616" y1="480" y2="480" x1="1408" />
            <wire x2="2128" y1="1040" y2="1040" x1="2064" />
        </branch>
        <branch name="FIFO_DI(7:0)">
            <wire x2="1424" y1="608" y2="768" x1="1424" />
            <wire x2="2096" y1="768" y2="768" x1="1424" />
            <wire x2="2144" y1="768" y2="768" x1="2096" />
            <wire x2="2144" y1="768" y2="1168" x1="2144" />
            <wire x2="1616" y1="608" y2="608" x1="1424" />
            <wire x2="2144" y1="1168" y2="1168" x1="2064" />
        </branch>
        <branch name="BUSY">
            <wire x2="1440" y1="720" y2="1168" x1="1440" />
            <wire x2="1584" y1="1168" y2="1168" x1="1440" />
            <wire x2="2144" y1="720" y2="720" x1="1440" />
            <wire x2="2144" y1="288" y2="288" x1="2048" />
            <wire x2="2144" y1="288" y2="720" x1="2144" />
        </branch>
        <branch name="FIFO_FULL">
            <wire x2="1472" y1="736" y2="1360" x1="1472" />
            <wire x2="1584" y1="1360" y2="1360" x1="1472" />
            <wire x2="2208" y1="736" y2="736" x1="1472" />
            <wire x2="2208" y1="416" y2="416" x1="2048" />
            <wire x2="2208" y1="416" y2="736" x1="2208" />
        </branch>
        <branch name="DATA(7:0)">
            <wire x2="1584" y1="1232" y2="1232" x1="1504" />
            <wire x2="1504" y1="1232" y2="1472" x1="1504" />
            <wire x2="2096" y1="1472" y2="1472" x1="1504" />
            <wire x2="2096" y1="1472" y2="1632" x1="2096" />
            <wire x2="2096" y1="1632" y2="1632" x1="2000" />
        </branch>
        <branch name="ADDR(9:0)">
            <wire x2="2064" y1="1424" y2="1424" x1="1536" />
            <wire x2="2080" y1="1424" y2="1424" x1="2064" />
            <wire x2="1536" y1="1424" y2="1760" x1="1536" />
            <wire x2="1616" y1="1760" y2="1760" x1="1536" />
            <wire x2="2080" y1="1232" y2="1232" x1="2064" />
            <wire x2="2080" y1="1232" y2="1424" x1="2080" />
        </branch>
        <branch name="EN_MEMORY">
            <wire x2="2192" y1="1440" y2="1440" x1="1568" />
            <wire x2="1568" y1="1440" y2="1696" x1="1568" />
            <wire x2="1616" y1="1696" y2="1696" x1="1568" />
            <wire x2="2192" y1="1104" y2="1104" x1="2064" />
            <wire x2="2192" y1="1104" y2="1440" x1="2192" />
        </branch>
        <branch name="LED0">
            <wire x2="2560" y1="912" y2="912" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2560" y="912" name="LED0" orien="R0" />
        <instance x="368" y="1520" name="XLXI_5" orien="R0" />
        <branch name="Reset">
            <wire x2="992" y1="1264" y2="1264" x1="752" />
            <wire x2="992" y1="352" y2="976" x1="992" />
            <wire x2="1584" y1="976" y2="976" x1="992" />
            <wire x2="992" y1="976" y2="992" x1="992" />
            <wire x2="992" y1="992" y2="1264" x1="992" />
            <wire x2="1616" y1="352" y2="352" x1="992" />
        </branch>
        <branch name="btn_south">
            <wire x2="368" y1="1264" y2="1264" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="1264" name="btn_south" orien="R180" />
        <instance x="864" y="192" name="constant2" orien="R0">
        </instance>
        <instance x="1616" y="704" name="XLXI_6" orien="R0">
        </instance>
        <branch name="const(7:0)">
            <wire x2="1024" y1="224" y2="224" x1="1008" />
            <wire x2="1088" y1="224" y2="224" x1="1024" />
            <wire x2="1120" y1="224" y2="224" x1="1088" />
            <wire x2="1120" y1="224" y2="544" x1="1120" />
            <wire x2="1616" y1="544" y2="544" x1="1120" />
        </branch>
        <branch name="SDA">
            <wire x2="2528" y1="544" y2="544" x1="2048" />
        </branch>
        <branch name="SCL">
            <wire x2="2528" y1="608" y2="608" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2528" y="544" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="2528" y="608" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="2560" y="224" name="LED7" orien="R0" />
        <branch name="LED7">
            <wire x2="2064" y1="224" y2="224" x1="2048" />
            <wire x2="2560" y1="224" y2="224" x1="2064" />
        </branch>
    </sheet>
</drawing>