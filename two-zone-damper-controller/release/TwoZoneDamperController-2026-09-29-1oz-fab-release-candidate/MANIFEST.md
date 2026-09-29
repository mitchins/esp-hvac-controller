# Release manifest

This package supersedes `TwoZoneDamperController-2026-09-27-fab-release-candidate` for fabrication. It records the same accepted design with the fabrication contract changed from 2 oz to **1 oz finished outer copper** following a geometry-based 1 oz ampacity closeout.

| Area | Contents |
| --- | --- |
| `fabrication/` | Gerbers, drill files, drill report, and upload ZIP |
| `source/` | KiCad board/schematic/project, local symbols, footprints, and rules |
| `documentation/` | Design notes, fabrication checklist, and use/ESPHome instructions |
| `firmware/` | Separate HVAC and generic 12 V ESPHome YAML profiles |
| `physical-fit/` | Current routed 1:1 fit sheet |
| `validation/` | ERC and PCB DRC status |

The package is ready for a 1 oz quotation. Do not fabricate until the final physical overlay is accepted.
