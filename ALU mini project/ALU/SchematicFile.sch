<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="result" />
        <signal name="cout" />
        <signal name="XLXN_9" />
        <signal name="b" />
        <signal name="a" />
        <signal name="coutSub" />
        <signal name="resultSUb" />
        <port polarity="Output" name="result" />
        <port polarity="Output" name="cout" />
        <port polarity="Input" name="b" />
        <port polarity="Input" name="a" />
        <port polarity="Output" name="coutSub" />
        <port polarity="Output" name="resultSUb" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_10">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="result" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="a" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="cout" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_14">
            <blockpin signalname="b" name="I0" />
            <blockpin signalname="a" name="I1" />
            <blockpin signalname="resultSUb" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="b" name="I1" />
            <blockpin signalname="coutSub" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="a" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="592" name="XLXI_12" orien="R0" />
        <branch name="result">
            <wire x2="1072" y1="256" y2="256" x1="1040" />
        </branch>
        <branch name="cout">
            <wire x2="1072" y1="496" y2="496" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="496" name="cout" orien="R0" />
        <instance x="784" y="848" name="XLXI_14" orien="R0" />
        <instance x="800" y="1088" name="XLXI_15" orien="R0" />
        <instance x="544" y="1056" name="XLXI_17" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="800" y1="1024" y2="1024" x1="768" />
        </branch>
        <branch name="a">
            <wire x2="112" y1="80" y2="160" x1="112" />
            <wire x2="416" y1="160" y2="160" x1="112" />
            <wire x2="416" y1="160" y2="224" x1="416" />
            <wire x2="496" y1="224" y2="224" x1="416" />
            <wire x2="496" y1="224" y2="528" x1="496" />
            <wire x2="784" y1="528" y2="528" x1="496" />
            <wire x2="784" y1="224" y2="224" x1="496" />
            <wire x2="112" y1="160" y2="720" x1="112" />
            <wire x2="496" y1="720" y2="720" x1="112" />
            <wire x2="784" y1="720" y2="720" x1="496" />
            <wire x2="496" y1="720" y2="1024" x1="496" />
            <wire x2="544" y1="1024" y2="1024" x1="496" />
            <wire x2="112" y1="720" y2="1024" x1="112" />
        </branch>
        <branch name="coutSub">
            <wire x2="1088" y1="992" y2="992" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1088" y="992" name="coutSub" orien="R0" />
        <branch name="resultSUb">
            <wire x2="1072" y1="752" y2="752" x1="1040" />
        </branch>
        <iomarker fontsize="28" x="1072" y="752" name="resultSUb" orien="R0" />
        <iomarker fontsize="28" x="112" y="80" name="a" orien="R270" />
        <branch name="b">
            <wire x2="272" y1="64" y2="64" x1="256" />
            <wire x2="272" y1="64" y2="288" x1="272" />
            <wire x2="272" y1="288" y2="784" x1="272" />
            <wire x2="688" y1="784" y2="784" x1="272" />
            <wire x2="784" y1="784" y2="784" x1="688" />
            <wire x2="688" y1="784" y2="960" x1="688" />
            <wire x2="800" y1="960" y2="960" x1="688" />
            <wire x2="272" y1="784" y2="1024" x1="272" />
            <wire x2="624" y1="288" y2="288" x1="272" />
            <wire x2="624" y1="288" y2="464" x1="624" />
            <wire x2="784" y1="464" y2="464" x1="624" />
            <wire x2="784" y1="288" y2="288" x1="624" />
        </branch>
        <iomarker fontsize="28" x="256" y="64" name="b" orien="R180" />
        <iomarker fontsize="28" x="1072" y="256" name="result" orien="R0" />
        <instance x="784" y="352" name="XLXI_10" orien="R0" />
    </sheet>
</drawing>