# Two-Zone Damper Controller - 1 oz fabrication release candidate

This is the complete 2026-09-29 release candidate for the accepted routed board, revised from the earlier 2 oz release solely to record and manufacture the validated **1 oz finished outer copper** stackup. The schematic, footprints, placement, board outline, and routing geometry are otherwise unchanged.

## Contents

- `fabrication/` - upload-ready Gerber/drill ZIP plus individual source files.
- `source/` - KiCad project, PCB, schematic, symbols, constraints, and local footprints.
- `documentation/` - build, wiring, commissioning, use-case, and fabrication guidance.
- `firmware/` - separate ESPHome HVAC and generic 12 V profiles.
- `physical-fit/` - routed 1:1 physical-fit sheet; print at 100% / Actual Size.
- `validation/` - current ERC and PCB-DRC status.

## Mandatory fabrication/order contract

- Two-layer FR-4, 1.60 mm nominal board thickness.
- **1 oz (35 um) finished copper on F.Cu and B.Cu.** Confirm this standard option in the JLCPCB order form. Do not select the 2 oz surcharge for this release.
- No assembly or stencil is assumed.
- Field side is isolated only: **never connect mains**.

## Field-side limits

- Install only one field-supply/use mode: 24 VAC HVAC or 12 V SELV generic loads.
- 10 A maximum total field current and 6 A maximum per generic resistive output.
- Select F1 for the measured load/inrush, application-specific AC/DC interrupt rating, and connected wiring. Never install a fuse above 10 A.
- Do not alter the accepted paired 5 mm positive paths, 4 mm output branches, or B.Cu field-return pour when using 1 oz copper.

Release hold: complete the final actual-component overlay using the supplied fit sheet before fabrication upload.
