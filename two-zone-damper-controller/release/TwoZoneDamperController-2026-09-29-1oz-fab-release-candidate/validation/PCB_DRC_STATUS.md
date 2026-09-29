# PCB DRC status

The accepted routed board was checked in the KiCad PCB Editor with zones refilled:

- 0 electrical errors
- 0 unconnected items
- 1 warning

The sole warning is a local-library metadata mismatch for
`Wemos_D1_mini_FemaleSocket_DONOR`; it does not identify a copper, net,
clearance, or pad-geometry defect. The exact footprint is bundled under
`../source/TwoZoneDamperController.pretty/`.

For this 1 oz release, only the recorded stackup, netclass labels, and
documentation changed; board geometry, copper, footprints, placement, and
schematic are unchanged from that accepted routed revision.

On 2026-09-29, KiCad 10.0.6's macOS command-line DRC was invoked again and
aborted before producing a report with:

```text
Swift/SwiftNativeNSArray.swift:78: Fatal error: Array index out of range
```

This is a local KiCad CLI crash, not a new board DRC result. Gerbers and drills
were exported successfully from the same 1 oz-stackup source. The fresh
schematic ERC report in this directory contains 0 errors and 0 warnings.
