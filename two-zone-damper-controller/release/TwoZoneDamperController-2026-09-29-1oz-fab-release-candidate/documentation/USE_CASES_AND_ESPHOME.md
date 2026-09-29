# Two-Zone Controller — Use Cases and ESPHome

This board switches an **isolated field supply** through two dry-contact
relays. USB 5 V powers only the Wemos, ULN2003, relay coils and wall LEDs; it
does not join the field circuit. **Never bring mains onto this PCB.**

## Choose one field use

| Use | Fit / wire | Relay behaviour |
| --- | --- | --- |
| HVAC (primary) | Isolated 24 VAC at J4; J1/J2 RJ12 dampers | Relay off = OPEN (NC); relay on = CLOSE (NO) |
| Ordinary 12 V lighting | Isolated 12 VDC at J4; J5/J6 terminals | Relay off = output NC; relay on = output NO. Use NO as switched +12 V and RETURN as 0 V. |
| Aquarium DAY/NIGHT | Isolated, **floating** 12 VDC at J4; J5/J6 terminals | Relay off = NC/NIGHT negative; relay on = NO/DAY negative. |

Do not connect 24 VAC and 12 VDC at the same time. J1/J2 and J5/J6 are
alternate connector populations for the same two relay contacts. Do not wire
both output styles to a channel. If an unused alternate connector is fitted,
treat its contacts as potentially live and leave it unconnected/protected.

The field-side limit is **10 A total continuous** and **6 A continuous per
resistive output**. It is not a motor, pump, solenoid, capacitive-load or
unknown LED-driver rating. The board requires two-layer, **1 oz outer copper**;
confirm that standard option at fabrication. Fit F1 at **no more than 10 A**, sized for
the measured load/inrush and every connected conductor; verify its interrupt
rating for the actual 12 VDC or 24 VAC application. F1 is a master fuse—it
does not independently limit either output to 6 A.

## 1. HVAC — two 24 VAC dampers

1. Fit the 5 V Songle relays, Wemos, ULN2003, wall-interface parts, J4 and
   J1/J2. Do not use J5/J6 for the HVAC installation.
2. Connect the isolated 24 VAC transformer to J4. F1 protects J4.1 and feeds
   both relay COM contacts; J4.2 is the damper common bus.
3. Each RJ12 socket is: **pins 1+2 = CLOSE, pins 3+4 = common, pins 5+6 =
   OPEN**. Meter the actual damper cable before final connection; connector
   orientation alone is not proof of the installed cable's colour/order.
4. The safe commanded startup condition is both relays off: both dampers are
   **commanded** OPEN. This requires a live 24 VAC supply and working
   actuators to become a physical state. There is no position feedback, so
   LEDs and ESPHome controls report the command—not a proven physical position.

For HVAC, never energise both relays: that commands both dampers closed. The
`examples/esphome-hvac.yaml` profile enforces this in every documented local
and Home Assistant command path. It is a firmware rule, not a hardware airflow
interlock; retain that rule in every future firmware change.

The supplied HVAC profile defines wall LEDs as command-selection indicators:
both off = BOTH OPEN; Living on/Rooms off = ZONE 1 ONLY; Living off/Rooms on =
ZONE 2 ONLY. They are not damper-position feedback.

## 2. Ordinary 12 VDC lighting

1. Fit J4, F1, relays and the intended J5/J6 3-pin terminals. Do not wire
   J1/J2 to the field load.
2. Connect **J4.1 = +12 V** and **J4.2 = 0 V**.
3. For each ordinary two-wire light: terminal **RETURN** (pin 2) goes to load
   negative; terminal **NO** (pin 3) goes to load positive; leave **NC**
   (pin 1) unused. Relay off is therefore light off.
4. Use `examples/esphome-generic-12v.yaml`. The two outputs are deliberately
   independent; do not copy the HVAC interlock into a garage/aquarium profile.

## 3. Aquarium common-positive DAY/NIGHT wiring

This supports a light with a shared positive lead and separate DAY− / NIGHT−
leads. It uses the relay's polarity-independent dry contacts; it does **not**
reverse USB, logic or relay-coil polarity.

1. The 12 V supply must be isolated and floating. Confirm that its negative
   is not tied to earth/chassis/USB ground, and do not add a second return path.
2. Use this field-wide convention for **both** channels: **J4.1 = 0 V** and
   **J4.2 = +12 V**. F1 then protects the negative conductor—valid only for
   this isolated SELV application.
3. At the relevant J5/J6: **RETURN** (pin 2) = lamp common +12 V;
   **NC** (pin 1) = NIGHT−; **NO** (pin 3) = DAY−.
4. In ESPHome, relay OFF selects NIGHT and relay ON selects DAY. “OFF” is a
   mode selection here, not a lamp-power-off command.

Do not mix this reversed convention with a conventional positive-switched
load on the other channel.

## Wemos / wall interface map

| Function | Wemos pin | ESPHome GPIO |
| --- | --- | --- |
| K1 / Zone 1 relay CLOSE | D1 | GPIO5 |
| K2 / Zone 2 relay CLOSE | D2 | GPIO4 |
| Living wall button | D5 | GPIO14 |
| Rooms wall button | D6 | GPIO12 |
| Living wall LED (ULN sink) | D7 | GPIO13 |
| Rooms wall LED (ULN sink) | D0 | GPIO16 |

The wall RJ12 is a passive two-button/two-LED interface, not Ethernet or a
telephone connection. Its six distinct pins are documented in
`DESIGN_NOTES.md`; use the project pinout and a meter when making a wall cable.

## ESPHome setup

Copy one profile from `examples/`, add Wi-Fi/API credentials, then compile it
for a `d1_mini`. Both examples use the board's hardware pulldowns and ESPHome
`ALWAYS_OFF` startup mode so the relays begin de-energised. Their Wi-Fi and API
reboot timeouts are disabled, so the local wall interface continues working
without Wi-Fi/Home Assistant. The trade-off is that a stuck network stack will
need a manual power-cycle rather than ESPHome's usual timeout reboot. The HVAC
example also drives the wall LEDs and exposes three Home Assistant buttons:
BOTH OPEN, ZONE 1 ONLY and ZONE 2 ONLY.

Fit `SRD-05VDC-SL-C` relays only. An `SRD-03VDC-SL-C` may be used for a
paper/mechanical check because it shares the package, but must never be fitted:
the circuit drives 5 V relay coils.

- `examples/esphome-hvac.yaml` — HVAC safe-state profile.
- `examples/esphome-generic-12v.yaml` — independent generic-light outputs.

ESPHome references: [GPIO switches](https://esphome.io/components/switch/gpio/),
[template buttons](https://esphome.io/components/button/template), and
[scripts](https://esphome.io/components/script/).

## Commission before field wiring

1. Test USB power with Wi-Fi active and both relay coils energised.
2. Test each relay/contact with a meter before connecting dampers or lights.
3. Confirm F1, wire gauge, load current and inrush are inside the stated limit.
4. For HVAC, prove OPEN/CLOSE at each real damper before normal operation.
