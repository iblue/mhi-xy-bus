# MHI X-Y Bus Reverse Engineering Project

This directory contains research and development files for reverse engineering the Mitsubishi Heavy Industries (MHI) air conditioning X-Y bus communication protocol.

## Project Status

**This project was never completed.** The files are published in the hope that they may be useful to someone interested in the specifics of the MHI X-Y bus protocol. The protocol analysis is partially complete, and the hardware designs reached prototype stage but were not finalized.

## Applicable Devices

This research was conducted on the following MHI equipment:

- **FDUM71VF** - Ducted indoor unit (address 0x0007 on the bus)
- **RC-E5** - Wired remote controller (address 0x8001 on the bus)

The X-Y bus is used across the MHI S-Series air conditioning systems and likely other MHI product lines that use wired remote controllers.

## Project Overview

The MHI X-Y bus is a two-wire communication bus used between MHI air conditioning units and their remote controllers. This project documents the protocol analysis, circuit simulations, and hardware development for interfacing with this bus.

### Key Findings

- **Bus Voltage:** ~17V DC (polarity-independent)
- **Encoding:** 8-level pulse position modulation (3 bits per symbol)
- **Symbol Rate:** ~800 symbols/sec (2400 bits/sec effective)
- **Packet Size:** 48 symbols per packet
- **Timing:** 1247 us per symbol, 50 us pulse width

## Directory Structure

### Documentation

| File | Description |
|------|-------------|
| `info.txt` | Basic bus specifications (German) |
| `notes.txt` | Detailed protocol analysis notes with timing measurements |
| `arduino.txt` | Arduino implementation notes and timing calculations |
| `input.txt` | Analog input circuit design notes |
| `keepalive.txt` | Analysis of keepalive/status packets with counter patterns |
| `parsing.txt` | Detailed packet parsing and field analysis |
| `report.odt` / `report.pdf` | Project report documents |

### Decoder Tools

| File | Description |
|------|-------------|
| `decoder` | Ruby script to decode logic analyzer exports |
| `pwlconvert` | Ruby script for PWL (Piece-Wise Linear) conversion |
| `*.decoded` | Decoded packet capture files |

### LTspice Circuit Simulations

The `.asc` files are LTspice schematic files. The `.log` files contain simulation logs.

| Circuit Family | Description |
|----------------|-------------|
| `Driver*.asc` | Output driver circuit iterations (A1-A8, B1-B4, C1-C14, D1-D2) |
| `Pegelkonverter*.asc` | Level converter circuits (voltage level shifting) |
| `VoltageDoubler*.asc` | Voltage doubler circuits for bus driving |
| `Filter*.asc` | Input filter designs |
| `Konverter_ganzneu*.asc` | Complete converter designs |
| `mosswitch*.asc` | MOSFET switching circuit designs |
| `Ausgangstreiber.asc` | Output driver (German: "Ausgangstreiber") |
| `Disconnector.asc` | Bus disconnect circuit |
| `MCDriverVDouble.asc` | Microcontroller driver with voltage doubler |
| `Final-*.asc` | Final circuit revisions |

### Component Libraries

| File | Description |
|------|-------------|
| `7805.asy` / `7812.asy` | LTspice symbols for 7805/7812 voltage regulators |
| `LM339.sub` | LTspice subcircuit for LM339 comparator |
| `LM393.5_1` | LTspice model for LM393 comparator |
| `regulators.lib` | Voltage regulator library |

### Hardware Design (KiCad)

The `platine/` directory contains KiCad PCB design files:

| File | Description |
|------|-------------|
| `mhixy.sch` | Main schematic |
| `mhixy.kicad_pcb` | PCB layout |
| `mhixy.pro` | KiCad project file |
| `*.sch` | Sub-schematics (ChargePump, Controller, Generators, InputConverter, InputVoltageFilter, OutputDriver) |
| `gerber-f3b1-3/` | Gerber files for PCB manufacturing |
| `ReicheltBOM.csv` | Bill of materials (Reichelt supplier format) |

### Microcontroller Firmware

The `reader/` directory contains AVR microcontroller firmware for reading the bus:

| File | Description |
|------|-------------|
| `main.c` / `main.h` | Main firmware source |
| `uart.c` / `uart.h` | UART communication driver |
| `ringbuffer.c` / `ringbuffer.h` | Ring buffer implementation |
| `panic.c` / `panic.h` | Error handling |
| `Makefile` | Build configuration |
| `main.hex` | Compiled firmware |
| `decoder` | Host-side decoder for serial data |
| `reader*.log` | Captured bus data logs |
| `datablock.txt` / `datablock-interpretation.txt` | Protocol field analysis |

### Miscellaneous

| File | Description |
|------|-------------|
| `output/` | Output directory (empty) |
| `pwl-out.txt` | PWL output file |

## Protocol Summary

### Packet Structure

Each packet contains 48 symbols (144 bits). The encoding uses pulse position modulation where the time between a low pulse and the following high pulse encodes 3 bits:

| Time (us) | Value |
|-----------|-------|
| ~100 | 0 |
| ~200 | 1 |
| ~300 | 2 |
| ~400 | 3 |
| ~500 | 4 |
| ~600 | 5 |
| ~700 | 6 |
| ~800 | 7 |

### Communication Pattern

1. Remote controller sends status packet
2. AC unit responds with ACK
3. Cycle repeats every ~5 seconds

### Identified Packet Types

- **Status packets:** Regular keepalive with incrementing counters
- **Command packets:** On/off, temperature changes
- **ACK packets:** Acknowledgment from AC unit

## Regenerating Simulation Data

The `.raw` simulation output files have been removed to reduce repository size. To regenerate them:

1. Open any `.asc` file in LTspice
2. Run the simulation (Run > Run or press the play button)
3. The `.raw` file will be generated automatically

## Requirements

- **LTspice:** For viewing and simulating circuit designs
- **KiCad:** For viewing PCB designs (in `platine/`)
- **Ruby:** For running decoder scripts
- **AVR toolchain:** For compiling firmware (in `reader/`)

## License

This is a reverse engineering research project, approved for public release. Use at your own risk.

## Credits

Original research by Markus Fenske / exablue GmbH (2018).
