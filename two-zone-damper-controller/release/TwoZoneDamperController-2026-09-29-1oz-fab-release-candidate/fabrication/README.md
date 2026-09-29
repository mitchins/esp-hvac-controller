# Fabrication files - 1 oz release candidate

`TwoZoneDamperController-2026-09-29-JLCPCB-1oz-gerbers.zip` is the upload-ready fabrication archive. It contains F/B copper, F/B mask, F/B silkscreen, Edge.Cuts, and separate plated/non-plated Excellon drill files.

## Order settings

- Two layers, FR-4, 1.60 mm nominal thickness.
- **1 oz (35 um) finished outer copper, both sides.** Gerbers do not set copper weight, so confirm this in the fabricator order form.
- No assembly/stencil is assumed.

The 1 oz decision is based on the retained geometry: parallel 5 mm input/fused-positive paths, 4 mm generic output branches, and the broad B.Cu return pour. Do not narrow or remove those features.

Before upload, print `../physical-fit/TwoZoneDamperController-1to1-routed.pdf` at 100% / Actual Size and perform the final real-component overlay.
