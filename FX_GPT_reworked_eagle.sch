<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
  <drawing>
    <settings>
      <setting alwaysvectorfont="no"/>
      <setting verticaltext="up"/>
    </settings>

    <grid distance="0.1" unitdist="inch" unit="inch" accuracy="4"/>

    <layers>
      <layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
      <layer number="16" name="Bottom" color="9" fill="1" visible="yes" active="yes"/>
      <layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
      <layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
      <layer number="21" name="Milling" color="3" fill="1" visible="yes" active="yes"/>
      <layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
      <layer number="51" name="Notes" color="15" fill="1" visible="yes" active="yes"/>
      <layer number="52" name="Design" color="1" fill="1" visible="yes" active="yes"/>
      <layer number="90" name="Rout" color="18" fill="1" visible="yes" active="yes"/>
      <layer number="91" name="Comp" color="19" fill="1" visible="yes" active="yes"/>
      <layer number="92" name="Deles" color="20" fill="1" visible="yes" active="yes"/>
      <layer number="95" name="Invis" color="24" fill="1" visible="yes" active="yes"/>
    </layers>

    <schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
      <libraries>
        <library name="supply1"/>
        <library name="device"/>
        <library name="linear"/>
      </libraries>

      <attributes/>
      <variantdefs/>
      <classes>
        <class number="0" name="default" width="0.1524" drill="0.0"/>
      </classes>

      <parts>
        <part name="U1" library="linear" deviceset="TL072P" device=""/>
        <part name="R1" library="device" deviceset="R-US" device="0207/10"/>
        <part name="R2" library="device" deviceset="R-US" device="0207/10"/>
        <part name="C1" library="device" deviceset="C-EU" device="C0805"/>
        <part name="C2" library="device" deviceset="C-EU" device="C0805"/>
        <part name="GND1" library="supply1" deviceset="GND" device=""/>
      </parts>

      <sheets>
        <sheet>
          <plain>
            <text x="10" y="10" size="2.54" layer="91">FX_GPT - Eagle draft</text>
            <text x="10" y="30" size="1.27" layer="91">Minimal TL072 stage with FX loop structure</text>
          </plain>

          <instances>
            <instance part="U1" gate="A" x="180" y="140" rot="R0" smashed="yes"/>
            <instance part="R1" gate="G$1" x="120" y="140" rot="R0" smashed="yes"/>
            <instance part="R2" gate="G$1" x="260" y="140" rot="R0" smashed="yes"/>
            <instance part="C1" gate="G$1" x="120" y="200" rot="R90" smashed="yes"/>
            <instance part="C2" gate="G$1" x="260" y="200" rot="R90" smashed="yes"/>
            <instance part="GND1" gate="GND" x="180" y="240" rot="R90" smashed="yes"/>
          </instances>

          <busses/>

          <nets>
            <net name="VIN" class="0">
              <segment>
                <wire x1="80" y1="140" x2="100" y2="140" width="0.1524" layer="1"/>
                <wire x1="100" y1="140" x2="100" y2="140" width="0.1524" layer="1"/>
                <wire x1="100" y1="140" x2="120" y2="140" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="VOUT" class="0">
              <segment>
                <wire x1="280" y1="140" x2="330" y2="140" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="GND" class="0">
              <segment>
                <wire x1="180" y1="220" x2="180" y2="200" width="0.1524" layer="1"/>
                <wire x1="180" y1="200" x2="180" y2="180" width="0.1524" layer="1"/>
                <wire x1="120" y1="200" x2="120" y2="180" width="0.1524" layer="1"/>
                <wire x1="260" y1="200" x2="260" y2="180" width="0.1524" layer="1"/>
                <wire x1="120" y1="180" x2="180" y2="180" width="0.1524" layer="1"/>
                <wire x1="180" y1="180" x2="260" y2="180" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="VCC" class="0">
              <segment>
                <wire x1="180" y1="90" x2="180" y2="70" width="0.1524" layer="1"/>
                <wire x1="180" y1="70" x2="230" y2="70" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="VEE" class="0">
              <segment>
                <wire x1="180" y1="190" x2="180" y2="220" width="0.1524" layer="1"/>
                <wire x1="180" y1="220" x2="230" y2="220" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="N$1" class="0">
              <segment>
                <wire x1="140" y1="140" x2="150" y2="140" width="0.1524" layer="1"/>
                <wire x1="150" y1="140" x2="170" y2="140" width="0.1524" layer="1"/>
              </segment>
            </net>

            <net name="N$2" class="0">
              <segment>
                <wire x1="210" y1="140" x2="240" y2="140" width="0.1524" layer="1"/>
              </segment>
            </net>
          </nets>
        </sheet>
      </sheets>
    </schematic>
  </drawing>
</eagle>
