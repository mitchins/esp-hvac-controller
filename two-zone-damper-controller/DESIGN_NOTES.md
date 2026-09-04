# Two-Zone Damper Controller

## Scope

This is a KiCad 10 replacement design. The archived 2021 design is a footprint/mechanical donor only; its schematic and routed PCB are not design inputs.

## Implemented topology

- `U2`: removable Wemos D1 Mini, USB-powered. The module header mapping follows the Wemos P1 diagram: D0/GPIO16 is pad 3, D5/GPIO14 pad 4, D6/GPIO12 pad 5, D7/GPIO13 pad 6, GND pad 10, D2/GPIO4 pad 13, D1/GPIO5 pad 14, +5 V pad 9, and +3.3 V pad 8.
- `U1`: ULN2003A, DIP-16. Wemos D1/GPIO5 drives K1; D2/GPIO4 drives K2.
- `K1`, `K2`: HK4100F-DC5V-SHG, 5 V SPDT relays. Coil positive is `+5V_USB`; coil negative is driven by U1. ULN2003 COM is also `+5V_USB` so its clamp diodes protect both coils.
- `R5`, `R6`: 10 kOhm pulldowns on the ULN inputs. Relays are therefore off if the Wemos is absent, unpowered, or its GPIOs are high impedance.
- `J4` is the isolated 24 VAC input. `24VAC_A` passes through F1 to both relay COM pins. `24VAC_B_COMMON` feeds both damper common pairs. NC is OPEN and NO is CLOSE.
- `J1`, `J2`: damper RJ12 sockets, paired 1+2 CLOSE, 3+4 COMMON, 5+6 OPEN.
- `J3`: wall RJ12 socket for a stateless two-button/two-LED local interface; see the dedicated section below.

## Local wall interface — Wi-Fi optional

The Wemos is authoritative for zone state. The wall panel is passive and provides two momentary buttons plus two status LEDs; Home Assistant/ESPHome, if present, is another source of state requests. The LEDs show the resulting commanded zone state rather than the physical position of a maintained switch.

### J3 wall-cable pinout

| J3 pin | Function | Wall-panel connection |
| --- | --- | --- |
| 1 | `+5V_USB` / `+5V_LED` | Common supply for both LED-resistor strings |
| 2 | `LIVING_LED_RETURN` | Living LED cathode / ULN low-side return |
| 3 | `LIVING_BUTTON_RAW` | Living momentary button; button shorts to pin 4 |
| 4 | `GND` | Button return |
| 5 | `ROOMS_BUTTON_RAW` | Rooms momentary button; button shorts to pin 4 |
| 6 | `ROOMS_LED_RETURN` | Rooms LED cathode / ULN low-side return |

Neither connector pair is intentionally paralleled in this interface. At the wall use one 1 kOhm, 0.25 W resistor in series with each ordinary visible LED: `+5V_LED -> 1k -> LED -> LED_RETURN`. With an approximately 0.8 V ULN2003 saturation voltage, this gives roughly 2.3 mA for a 1.9 V red LED and 2.0 mA for a 2.2 V green LED. The resistor is a wall-panel component, not a PCB component.

The input conditioning remains on the controller PCB:

- Living button: `J3.3 -> R1 2.2k pull-up to +3V3 -> R3 1k series -> C3 100nF GPIO-side filter -> D5/GPIO14`.
- Rooms button: `J3.5 -> R2 2.2k pull-up to +3V3 -> R4 1k series -> C4 100nF GPIO-side filter -> D6/GPIO12`.

The spare ULN2003A channels sink the remote LEDs:

- `D7/GPIO13 -> U1 I3 -> U1 O3 -> J3.2 LIVING_LED_RETURN`.
- `D0/GPIO16 -> U1 I4 -> U1 O4 -> J3.6 ROOMS_LED_RETURN`.

### Intended firmware state model

Firmware is not part of this PCB phase, but its required state model is:

| Current state | Living button | Rooms button |
| --- | --- | --- |
| Both open | Living only | Rooms only |
| Living only | Both open | Rooms only |
| Rooms only | Living only | Both open |

Remote state changes must update this same authoritative state and hence both wall LEDs. Firmware must never command both dampers closed. On cold boot or loss of USB/MCU drive, both relays de-energize and command both dampers open; initialise the logical state and LEDs to BOTH OPEN. State persistence is optional and is not needed for safe electrical operation.

## Power-path conclusion

The original Wemos D1 Mini V3 schematic routes USB through a 0.5 A fuse to the board's +5 V rail, which is brought to the 5 V header pin. The selected HK4100F-DC5V-SHG coil is 125 Ohm (40 mA nominal); two coils therefore need approximately 80 mA, plus insignificant ULN2003 input/clamp current. This is compatible with a sound D1 Mini and an adequately rated USB supply, without a second USB connector.

The exact fitted D1 Mini must nevertheless be checked before release: confirm USB-to-5V-header continuity/topology and verify the 5 V rail under Wi-Fi activity with both coils energized. Do not add a separate USB connector unless that test fails.

Sources: https://www.wemos.cc/en/latest/_static/files/sch_d1_mini_v3.0.0.pdf and https://data.sah.rs/products/relays/hk4100f_manual.pdf.

## Project-local footprint status

- `Wemos_D1_mini_FemaleSocket_DONOR`: recovered pad geometry (2 x 8, 2.54 mm pitch, 22.86 mm row spacing) from the archived project. Candidate only; verify with the actual D1 Mini, header sockets, USB overhang, and enclosure.
- `RJ12_Amphenol_54601_DONOR`: recovered 6P6C pad geometry from the archived project. Candidate only; verify the physical socket body, latch/board-edge direction, locating holes, and plug/socket pin orientation.
- `HK4100F_DC5V_SHG`: project-local six-pin 14.5 x 10.5 mm footprint and matching symbol. Electrical mapping is 1=NO, 2=coil+, 3/4=COM, 5=coil-, 6=NC. Verify by fitting the physical relay over the later 1:1 print before fabrication.
- F1 uses a provisional standard 5 x 20 mm clip footprint. Fuse current rating remains intentionally TBD pending actuator current measurement.
- J4 uses the larger Phoenix PT-1,5-2-5.0-H footprint. The exact terminal block has not yet been identified from the available desk parts; verify the purchased terminal against the 1:1 print before fabrication.

## Pre-fabrication gates

1. Meter the installed damper and wall cables, then confirm or swap the documented OPEN/CLOSE outer-pair assignment before fabrication.
2. Identify the actual Wemos/D1 Mini revision and perform the 5 V loaded-rail test.
3. Make a 1:1 PCB print containing Edge.Cuts, pads, F.Fab, and dimensions; physically fit the D1 Mini, female sockets, relays, RJ12 sockets, fuse holder, terminal block, and enclosure.
4. Select the F1 current rating only after actuator current measurement.
