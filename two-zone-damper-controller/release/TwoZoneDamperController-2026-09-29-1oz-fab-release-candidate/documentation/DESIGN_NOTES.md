# Two-Zone Damper Controller

## Scope

This is a KiCad 10 replacement design. The archived 2021 design is a footprint/mechanical donor only; its schematic and routed PCB are not design inputs.

## Implemented topology

- `U2`: removable Wemos D1 Mini, USB-powered. The module header mapping follows the Wemos P1 diagram: D0/GPIO16 is pad 3, D5/GPIO14 pad 4, D6/GPIO12 pad 5, D7/GPIO13 pad 6, GND pad 10, D2/GPIO4 pad 13, D1/GPIO5 pad 14, +5 V pad 9, and +3.3 V pad 8.
- `U1`: ULN2003A, DIP-16. Wemos D1/GPIO5 drives K1; D2/GPIO4 drives K2.
- `K1`, `K2`: Songle `SRD-05VDC-SL-C`, sealed 5 V Form-C/SPDT relays. Coil positive is `+5V_USB`; coil negative is driven by U1. ULN2003 COM is also `+5V_USB` so its clamp diodes protect both coils. The physically available `SRD-03VDC-SL-C` is a mechanical-fit proxy only and must not be populated.
- `R5`, `R6`: 10 kOhm pulldowns on the ULN inputs. Relays are therefore off if the Wemos is absent, unpowered, or its GPIOs are high impedance.
- `J4` is the isolated field-supply input. It uses the KEFA `KF128-5.0-2P` / LCSC `C474950` mechanical pattern, as do the generic outputs; the stocked ZPWAN blocks are its physical-fit proxy. The actual stocked shells are marked **10 A**; retain the board's 10 A total maximum and never exceed it. Select exactly one source: HVAC 24 VAC **or** generic-load 12 VDC; never connect or energize both. `FIELD_SUPPLY_POS_IN` passes through F1 to `FIELD_SUPPLY_POS_FUSED` at both relay COM pins. `FIELD_SUPPLY_RETURN` feeds both common pairs. NC is OPEN and NO is CLOSE.
- `J1`, `J2`: HVAC 24 VAC damper RJ12 sockets, paired 1+2 CLOSE, 3+4 `FIELD_SUPPLY_RETURN`, 5+6 OPEN. They are alternate populations to J5/J6, not additional outputs.
- `J3`: wall RJ12 socket for a stateless two-button/two-LED local interface; see the dedicated section below.
- `J5`, `J6`: optional alternate Zone 1 / Zone 2 load outputs for the mutually exclusive 12 V SELV population. Pin order is NC, common return, NO. Do not populate these for a normal HVAC-only build.

## Final field-side use contract

The HVAC and generic-load uses share only the two relay dry contacts. They are alternate populations, not simultaneous uses. USB 5 V powers only U2, U1, K1/K2 coils, and the wall LEDs; it never connects to `FIELD_SUPPLY_RETURN`.

### HVAC population

- J4 receives isolated 24 VAC.
- Populate J1/J2 only; they are the RJ12 damper outputs.
- K1/K2 NC is damper OPEN and NO is damper CLOSE.

### Generic 12 V SELV population

- Source: connect only the 12 V DC output of the external isolated supply to J4. Its AC input is never brought onto this PCB.
- Path: `FIELD_SUPPLY_POS_IN` -> F1 -> `FIELD_SUPPLY_POS_FUSED` -> K1/K2 COM. The neutral field-side names apply to either permitted field supply.
- J5 and J6 are the alternate 12 VDC generic-load population: pin 1 is relay NC, pin 2 is `FIELD_SUPPLY_RETURN`, and pin 3 is relay NO. Do not populate or wire J1/J2 and J5/J6 for the same relay/channel. Each is an independent **1x3 KF128-style terminal**. The PCB uses a 5.00 mm nominal pitch; an ordered 5.08 mm 3P variant is explicitly permitted because the outside-pin mismatch is only 0.16 mm. The two connector bodies have a 5 mm physical separation for serviceability.
- Board-use limit: 10 A total continuous field input/current and 6 A continuous per individual relay/output. Simultaneous J5 + J6 load must stay at or below 10 A total. This is a resistive-load board rating, not permission to exceed a component's rating with high-inrush, capacitive, inductive, motor, pump, or unknown LED-driver loads.
- **Conventional positive-switched 12 V mode:** connect J4.1 (`FIELD_SUPPLY_POS_IN`) to +12 V and J4.2 (`FIELD_SUPPLY_RETURN`) to 0 V. For an ordinary two-wire load, use RETURN for load negative, NO for switched +12 V, and leave NC unused. De-energized relay is therefore OFF. A three-wire *common-negative* changeover load uses NC as alternate/default positive, RETURN as common negative, and NO as active positive.
- **Aquarium common-positive / split-negative mode:** this is a different, board-wide field-polarity convention. Connect J4.1 (the F1/relay-COM leg) to 0 V and J4.2 (the common bus) to +12 V. J5/J6 pin 2 is then the lamp's common +12 V, pin 1 (NC) is NIGHT/default negative, and pin 3 (NO) is DAY/active negative. F1 is consequently in the negative conductor; that is acceptable only for this isolated, floating SELV field system. Do not provide a second negative/earth return path, and do not combine this wiring with a conventional positive-switched load on the other channel.
- The SRD Form-C rating is 7 A at 28 V DC resistive and only 3 A at 28 V DC inductive. The specified 6 A per output is therefore limited to the stated resistive service.
- Fabrication requirement: **two layers with 1 oz (35 um) finished F.Cu and B.Cu**. The KiCad stackup records this assumption, but Gerber upload does not select copper weight at the fabricator: explicitly confirm standard 1 oz outer copper in the JLCPCB order form. KiCad 10's Track Width calculator is based on IPC-2221, not IPC-2152. The following are screening calculations, not thermal certification: the parallel J4-to-F1 paths are 5.0 mm F.Cu × 31.2 mm and 5.0 mm B.Cu × 47.2 mm, giving an estimated 60/40 split (about 6.0 A/4.0 A at 10 A total) and approximately 5.7 C / 2.3 C rise respectively; the F1-to-COM conductors are equal 5.0 mm × 38.6 mm paths at approximately 3.8 C each with 5 A/layer; the B.Cu return has only a 5.0 mm × 5.1 mm J4 exit before flaring to 25 mm and entering a 14.5 mm trunk; and all four relay-contact-to-generic-output routes are 4.0 mm wide (the longest is 80.2 mm, approximately 8.2 C at 6 A). A hypothetical loss of a positive copper layer would put 10 A through a single 5.0 mm trace and is not an accepted operating condition (approximately 18.2 C screening rise). The persistent `TwoZoneDamperController.kicad_dru` file enforces field clearances, positive-path widths, output-branch widths, and solid return-pad connections. No vias are permitted in field-current paths.
- F1 is the field-side master fuse. It uses exactly two Altronics S5983 M205 PCB clips and one M205 5 × 20 mm fuse. The clip hardware is 10 A maximum; select the fuse current from measured load and inrush current and verify the interrupt rating for the actual use: 12 VDC generic load or 24 VAC HVAC. Never choose it merely because the board maximum is 10 A.
- The USB 5 V rail remains isolated from the load supply and powers only U2, U1, relay coils, and wall LEDs. Use a sound 5 V / 1 A or better USB source: two SRD-05VDC-SL-C coils draw about 143 mA total, in addition to Wemos activity.

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

Remote state changes must update this same authoritative state and hence both wall LEDs. Firmware must never command both dampers closed. On cold boot or loss of USB/MCU drive, both relays de-energize and command both dampers open; physical opening still depends on a live 24 VAC field supply and working actuators, as the board has no position feedback. Initialise the logical state and LEDs to BOTH OPEN. State persistence is optional and is not needed for safe electrical operation.

## Power-path conclusion

The original Wemos D1 Mini V3 schematic routes USB through a 0.5 A fuse to the board's +5 V rail, which is brought to the 5 V header pin. The selected SRD-05VDC-SL-C coil is 70 Ohm (71.4 mA nominal); two coils therefore need approximately 143 mA, plus insignificant ULN2003 input/clamp current. This is compatible with a sound D1 Mini and an adequately rated USB supply, without a second USB connector.

The exact fitted D1 Mini must nevertheless be checked before release: confirm USB-to-5V-header continuity/topology and verify the 5 V rail under Wi-Fi activity with both coils energized. Do not add a separate USB connector unless that test fails.

Sources: https://www.wemos.cc/en/latest/_static/files/sch_d1_mini_v3.0.0.pdf; Songle SRD-series dimensional/drilling and rating data; KiCad IPC-2221 track-width calculator; Altronics P2036A / Dinkle ESK635V data; Altronics S5983/S5984 M205 clip data.

## Project-local footprint status

- `Wemos_D1_mini_FemaleSocket_DONOR`: recovered pad geometry (2 x 8, 2.54 mm pitch, 22.86 mm row spacing) from the archived project. Candidate only; verify with the actual D1 Mini, header sockets, USB overhang, and enclosure.
- `Connector_RJ:RJ25_Wayconn_MJEA-660X1_Horizontal`: KiCad's standard Wayconn 6P6C right-angle footprint, sourced from the MJEA-660X1XXX drawing. It has the short 13 mm body, mirrored/staggered two-row 0.90 mm contact pattern, and two Ø2.30 mm retention holes at 12.00 mm centres that match the stocked sockets' observed geometry. J1/J2/J3 use it; verify all three physical parts against the latest 1:1 print before fabrication.
- `Songle_SRD_05VDC_SL_C`: project-local manufacturer-drawing-based 19.2 x 15.6 mm, five-hole Form-C footprint. Electrical mapping is 1=NO, 2=coil+, 3=COM, 5=coil-, 6=NC. Verify with the physical SRD-03VDC-SL-C proxy over the 1:1 print; populate `SRD-05VDC-SL-C` only.
- `ZPWAN_126_5_0_02P`, `ZPWAN_126_5_0_J5_Left`, and `ZPWAN_126_5_0_J6_Right`: project-local footprints mechanically based on KEFA `KF128-5.0-2P` / LCSC `C474950`: 5.00 mm pitch, 10.00 × 10.50 mm shell envelope, and Ø1.60 mm drill. J4 uses one actual 02P shell. **J5 and J6 are each one independent, physically grouped 3-conductor output terminal (NC / RETURN / NO), not a six-way block and not an ambiguous 2+2+2 field grouping.** The ordered 3P KF128-style parts remain acceptable at 5.08 mm pitch; their 0.16 mm end-to-end mismatch is within the deliberately tolerant 3P drill arrangement. The stocked ZPWAN family is marked 10 A; retain the board field-side limit of 10 A total. Verify each 3P body, side lock, and drill fit on the updated 1:1 proof.
- `Altronics_S5983_M205_2Clip_P20.60mm`: project-local F1 footprint for exactly two S5983 M205 clips and one M205 5 × 20 mm fuse. Each clip uses two 1.0 × 2.0 mm plated slots at 5.2 mm pitch; the clip is 10 A maximum. Physical overlay confirms that the four slots run in line with the fuse axis, spanning 20.60 mm end-to-end; this matches KiCad's standard inline M205 clip-footprint convention.

## Pre-fabrication gates

1. Meter the installed damper and wall cables, then confirm or swap the documented OPEN/CLOSE outer-pair assignment before fabrication.
2. Identify the actual Wemos/D1 Mini revision and perform the 5 V loaded-rail test.
3. Make a 1:1 PCB print containing Edge.Cuts, pads, F.Fab, and dimensions; physically fit the D1 Mini, female sockets, relays, RJ12 sockets, fuse holder, terminal block, and enclosure.
4. Populate F1 with two Altronics S5983 M205 PCB clips and one M205 5 × 20 mm fuse. Before fabrication, physically overlay the purchased clips and installed fuse against the 1:1 proof. Select the actual fuse current and AC/DC interrupt rating only after actuator or generic-load current and inrush measurement.
5. Order standard 1 oz finished outer copper and retain the documented high-current pours/tracks. Do not connect the 24 VAC and 12 V alternative loads at the same time.
