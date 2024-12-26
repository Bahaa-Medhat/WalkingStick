# FPGA Digital System Design Projects

## Overview
This repository contains the implementation of two projects as part of the **CSEN 605: Digital System Design** course:

1. **Digital Clock** (Assignment): A synchronous digital clock using FPGA.
2. **Walking Stick for Visually Impaired People** (Project): An assistive device designed to enhance accessibility and safety.

---

## Project 1: Digital Clock (Assignment)
### Description
A digital clock designed for the DE10-Lite FPGA board that displays time in the format of hours, minutes, and seconds. It includes features such as synchronous active-low reset and simulation using ModelSim.

### Features
- Operates at a frequency of 50 GHz.
- Assumes each clock cycle corresponds to one second.
- Implements a reset mechanism tested via simulation.
- Includes VHDL code and testbench.

### Deliverables
- VHDL code for the clock and testbench.
- ModelSim simulation results (waveform screenshots).

---

## Project 2: Walking Stick for Visually Impaired People
### Description
An FPGA-based walking stick designed to assist visually impaired individuals. It incorporates sensors to detect obstacles, a vibration mechanism for alerts, and a beeping feature for when the stick is dropped.

### Features
- **Activation/Deactivation**: Controlled through a switch or button.
- **Obstacle Detection**: Alerts the user with vibrations using an obstacle avoidance sensor.
- **Drop Detection**: Produces a warning sound if the stick falls.
- **Sensors and Components**: User-defined, enabling flexibility in implementation.

### Deliverables
- VHDL code and simulation results.
- Demo video showcasing the project functionality.
- Comprehensive report detailing design, components, and results.

---

## Repository Structure
