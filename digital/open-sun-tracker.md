---
layout: page
title: Open Sun Tracker
description: An open-source, single-axis solar-tracking system developed as my bachelor's thesis in 2014.
permalink: /digitals/open-sun-tracker/
---

# Open Sun Tracker

Open Sun Tracker was my bachelor's thesis project in 2014. The goal was to initiate an open-source DIY platform for controlling a single-axis solar or photovoltaic tracking system. The software and electronics were designed to support different linear actuators and tracking surfaces, while the mechanical frame and foundation were intentionally outside the scope of the work.

![Open Sun Tracker photovoltaic test system with a large tracked module surface]({{ '/assets/images/digital/open-sun-tracker/test-system.png' | relative_url }})

## Project idea

A photovoltaic surface produces its best output when sunlight reaches it at a favourable angle. Open Sun Tracker calculates the position of the sun algorithmically and translates the desired tracker angle into a target position for a linear actuator. The project focused on an affordable, reproducible control platform with published background information, software, material guidance and step-by-step documentation.

The design supported three operating environments:

- **Online:** network and internet access, including time synchronisation
- **Isolated:** local network access without an internet connection
- **Offline:** autonomous operation without network connectivity

## System architecture

![Open Sun Tracker system architecture with Netduino, Control Shield, actuator, anemometer, network client and microSD storage]({{ '/assets/images/digital/open-sun-tracker/system-architecture.png' | relative_url }})

The controller was based on a **Netduino Plus 2** running the .NET Micro Framework. A custom-built Control Shield connected the development board to the actuator, end-stop signals and optional wind sensor. A microSD card stored the web interface, XML configuration and log files.

The main components were:

- Netduino Plus 2 controller with Ethernet and microSD storage
- Custom Control Shield for relay, motor and sensor interfacing
- Linear actuator with supported end-stop or Hall-sensor feedback
- Optional anemometer for wind protection
- XML-based configuration for location, time, frame geometry, motor behaviour, logging and networking
- Embedded web and REST interfaces
- OSTWin desktop client for status, configuration, motor control and diagnostics

![Custom Open Sun Tracker Control Shield with relay and terminal connections]({{ '/assets/images/digital/open-sun-tracker/control-shield.png' | relative_url }})

## Software and operation

The firmware calculated the daily solar path from the configured position and time. It controlled motor initialisation, calibration and positioning and could move the tracker to a safe position when the configured wind threshold was exceeded.

The OSTWin Windows client provided dedicated views for system state, logs, configuration, motor operation, tracker data and diagnostics. Network endpoints also exposed status, configuration, wind information, calibration and motor commands.

![OSTWin desktop client showing tracker, motor, wind and system status]({{ '/assets/images/digital/open-sun-tracker/ostwin-client.png' | relative_url }})

The accompanying project documentation covered:

- Assembly and testing of the Control Shield
- Firmware and desktop-client installation
- XML configuration and system commissioning
- Frame and actuator calibration
- Normal operation, monitoring and troubleshooting

## Test installation

The documented test system used automatic azimuth tracking and manual elevation adjustment. Its main characteristics were:

| Property | 2014 test-system value |
|---|---|
| Tracking surface | Approximately 26 m² |
| Photovoltaic modules | 20 monocrystalline modules at 180 W each |
| Nominal power | 3.6 kWp |
| Actuator | Linak LA36 with Hall sensor |
| Rated dynamic actuator force | 10,000 N |
| Open Sun Tracker component cost | Approximately €160 |
| Tracking operation began | 17 April 2014 |

![Rear view of the tracked photovoltaic surface and linear-actuator mechanism]({{ '/assets/images/digital/open-sun-tracker/tracker-rear-view.png' | relative_url }})

![Open Sun Tracker control cabinet with custom electronics and 24-volt power supply]({{ '/assets/images/digital/open-sun-tracker/control-cabinet.png' | relative_url }})

## Interested in the project?

If you are interested in the source code, technical documentation or further background, feel free to contact me at [lab@danielstegmaier.de](mailto:lab@danielstegmaier.de).

---

[Back to Digitals]({{ '/digitals/' | relative_url }}) · [Back to the home page]({{ '/' | relative_url }})
