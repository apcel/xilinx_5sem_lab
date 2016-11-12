<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X1" />
        <signal name="X0" />
        <signal name="xo_" />
        <signal name="do_" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="FD_CLK" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="bo_" />
        <signal name="Y" />
        <signal name="ro_" />
        <port polarity="Input" name="X1" />
        <port polarity="Input" name="X0" />
        <port polarity="Output" name="xo_" />
        <port polarity="Output" name="do_" />
        <port polarity="Input" name="FD_CLK" />
        <port polarity="Output" name="bo_" />
        <port polarity="Output" name="Y" />
        <port polarity="Output" name="ro_" />
        <blockdef name="komb">
            <timestamp>2016-11-12T10:17:22</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-256" y2="-256" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-64" y2="-64" x1="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="komb" name="XLXI_1">
            <blockpin signalname="ro_" name="r" />
            <blockpin signalname="xo_" name="x" />
            <blockpin signalname="do_" name="d" />
            <blockpin signalname="bo_" name="b" />
            <blockpin signalname="X1" name="i1" />
            <blockpin signalname="X0" name="i0" />
            <blockpin signalname="XLXN_7" name="r_o" />
            <blockpin signalname="XLXN_8" name="x_o" />
            <blockpin signalname="XLXN_9" name="d_o" />
            <blockpin signalname="XLXN_10" name="b_o" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="FD_CLK" name="C" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="ro_" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_3">
            <blockpin signalname="FD_CLK" name="C" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="xo_" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_4">
            <blockpin signalname="FD_CLK" name="C" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="do_" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_5">
            <blockpin signalname="FD_CLK" name="C" />
            <blockpin signalname="XLXN_10" name="D" />
            <blockpin signalname="bo_" name="Q" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="bo_" name="I0" />
            <blockpin signalname="do_" name="I1" />
            <blockpin signalname="xo_" name="I2" />
            <blockpin signalname="ro_" name="I3" />
            <blockpin signalname="Y" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="1200" name="XLXI_2" orien="R0" />
        <instance x="1696" y="1488" name="XLXI_3" orien="R0" />
        <instance x="1696" y="1776" name="XLXI_4" orien="R0" />
        <instance x="1696" y="2064" name="XLXI_5" orien="R0" />
        <instance x="1008" y="1616" name="XLXI_1" orien="R0">
        </instance>
        <branch name="X1">
            <wire x2="1008" y1="1520" y2="1520" x1="160" />
        </branch>
        <branch name="X0">
            <wire x2="1008" y1="1584" y2="1584" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="1520" name="X1" orien="R180" />
        <iomarker fontsize="28" x="160" y="1584" name="X0" orien="R180" />
        <instance x="2880" y="1552" name="XLXI_6" orien="R0" />
        <branch name="xo_">
            <wire x2="976" y1="608" y2="1328" x1="976" />
            <wire x2="1008" y1="1328" y2="1328" x1="976" />
            <wire x2="2272" y1="608" y2="608" x1="976" />
            <wire x2="2272" y1="608" y2="752" x1="2272" />
            <wire x2="2272" y1="752" y2="1232" x1="2272" />
            <wire x2="2480" y1="1232" y2="1232" x1="2272" />
            <wire x2="2480" y1="1232" y2="1360" x1="2480" />
            <wire x2="2880" y1="1360" y2="1360" x1="2480" />
            <wire x2="3312" y1="752" y2="752" x1="2272" />
            <wire x2="2272" y1="1232" y2="1232" x1="2080" />
        </branch>
        <branch name="do_">
            <wire x2="928" y1="560" y2="1392" x1="928" />
            <wire x2="1008" y1="1392" y2="1392" x1="928" />
            <wire x2="2384" y1="560" y2="560" x1="928" />
            <wire x2="2384" y1="560" y2="832" x1="2384" />
            <wire x2="2384" y1="832" y2="1520" x1="2384" />
            <wire x2="2480" y1="1520" y2="1520" x1="2384" />
            <wire x2="3312" y1="832" y2="832" x1="2384" />
            <wire x2="2384" y1="1520" y2="1520" x1="2080" />
            <wire x2="2480" y1="1424" y2="1520" x1="2480" />
            <wire x2="2880" y1="1424" y2="1424" x1="2480" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1536" y1="1264" y2="1264" x1="1392" />
            <wire x2="1536" y1="944" y2="1264" x1="1536" />
            <wire x2="1696" y1="944" y2="944" x1="1536" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1536" y1="1456" y2="1456" x1="1392" />
            <wire x2="1536" y1="1456" y2="1520" x1="1536" />
            <wire x2="1696" y1="1520" y2="1520" x1="1536" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1536" y1="1552" y2="1552" x1="1392" />
            <wire x2="1536" y1="1552" y2="1808" x1="1536" />
            <wire x2="1696" y1="1808" y2="1808" x1="1536" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1552" y1="1360" y2="1360" x1="1392" />
            <wire x2="1552" y1="1232" y2="1360" x1="1552" />
            <wire x2="1696" y1="1232" y2="1232" x1="1552" />
        </branch>
        <branch name="FD_CLK">
            <wire x2="1680" y1="2624" y2="2624" x1="112" />
            <wire x2="1696" y1="1072" y2="1072" x1="1680" />
            <wire x2="1680" y1="1072" y2="1360" x1="1680" />
            <wire x2="1696" y1="1360" y2="1360" x1="1680" />
            <wire x2="1680" y1="1360" y2="1648" x1="1680" />
            <wire x2="1696" y1="1648" y2="1648" x1="1680" />
            <wire x2="1680" y1="1648" y2="1936" x1="1680" />
            <wire x2="1696" y1="1936" y2="1936" x1="1680" />
            <wire x2="1680" y1="1936" y2="2624" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="112" y="2624" name="FD_CLK" orien="R180" />
        <branch name="bo_">
            <wire x2="912" y1="464" y2="1456" x1="912" />
            <wire x2="1008" y1="1456" y2="1456" x1="912" />
            <wire x2="2592" y1="464" y2="464" x1="912" />
            <wire x2="2592" y1="464" y2="880" x1="2592" />
            <wire x2="2592" y1="880" y2="1808" x1="2592" />
            <wire x2="2880" y1="1808" y2="1808" x1="2592" />
            <wire x2="3312" y1="880" y2="880" x1="2592" />
            <wire x2="2592" y1="1808" y2="1808" x1="2080" />
            <wire x2="2880" y1="1488" y2="1808" x1="2880" />
        </branch>
        <branch name="Y">
            <wire x2="3168" y1="1392" y2="1392" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1392" name="Y" orien="R0" />
        <branch name="ro_">
            <wire x2="992" y1="704" y2="1264" x1="992" />
            <wire x2="1008" y1="1264" y2="1264" x1="992" />
            <wire x2="2144" y1="704" y2="704" x1="992" />
            <wire x2="2144" y1="704" y2="720" x1="2144" />
            <wire x2="2144" y1="720" y2="944" x1="2144" />
            <wire x2="2880" y1="944" y2="944" x1="2144" />
            <wire x2="2880" y1="944" y2="1296" x1="2880" />
            <wire x2="3312" y1="720" y2="720" x1="2144" />
            <wire x2="2144" y1="944" y2="944" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="3312" y="720" name="ro_" orien="R0" />
        <iomarker fontsize="28" x="3312" y="752" name="xo_" orien="R0" />
        <iomarker fontsize="28" x="3312" y="832" name="do_" orien="R0" />
        <iomarker fontsize="28" x="3312" y="880" name="bo_" orien="R0" />
    </sheet>
</drawing>