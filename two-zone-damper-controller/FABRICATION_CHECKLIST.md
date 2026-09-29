# Fabrication release checklist

## Mandatory board order

- Two-layer FR-4, 1.60 mm nominal board thickness.
- **Select standard 1 oz outer copper at JLCPCB.** The KiCad board stackup records 35 um F.Cu and B.Cu; Gerbers do not transmit copper weight as an order instruction.
- Do not substitute a lower copper weight or alter the accepted 5 mm paired positive paths, 4 mm relay-output paths, or B.Cu field-return pour.

## Before Gerber release

- DRC: zero electrical errors and zero unconnected items.
- Print the current routed 1:1 fit sheet at 100% / Actual Size and verify the 50.00 mm scale bar.
- Overlay the actual D1 Mini/socket headers, RJ12 connectors, SRD relay proxy, J4 terminal, S5983 clips with M205 fuse, and the ordered J5/J6 3P terminals.
- Confirm HVAC damper OPEN/CLOSE wiring at the installed cables.
- Select F1 from measured load/inrush and verify its interrupt rating for the intended 12 VDC or 24 VAC field application. It must not exceed the board's 10 A total field-current limit and must protect the connected wiring; it is not an individual 6 A output fuse.
- Confirm JLCPCB's standard 1 oz outer-copper option when placing the order; do not select the 2 oz surcharge for this revision.

## Commissioning after assembly

- Test the installed D1 Mini's 5 V rail under Wi-Fi activity with both relay coils energised.
- For generic loads, remain within 10 A total and 6 A per resistive output.
