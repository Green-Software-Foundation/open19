# Open19 V1 Specification

The Open19 specification is a standard for data center rack and server form factors that focuses on standardized power distribution, high-performance networking, and blind-mate connectors. Key features include multiple server "brick" form factors, a modular power shelf, and support for both traditional air-cooling and newer liquid-cooling systems. It allows vendors to choose their own components while ensuring physical compatibility within the rack, promoting choice and innovation. 

- [Open19-V1-Servers-specification](https://github.com/Green-Software-Foundation/open19/blob/v1.0/discussion-docs/Open19_V1_System_Level_Specification.pdf)
- [Open19_V1_System_Level_Specification](https://github.com/Green-Software-Foundation/open19/blob/v1.0/discussion-docs/Open19_V1_System_Level_Specification.pdf)
***
## Key aspects of the Open19 specification:
Brick form factors: The standard defines several independent server "brick" form factors, including half-width 1U, full-width 1U, 2U, and a half-width 2U for GPUs.

***
## Power:
The system uses a modular power shelf that holds vendor-specific power supplies.
The Open19 v2 specification enables higher power delivery (3.5kW per brick) and supports 48V native power, which is more efficient than traditional 12V systems.
Power and data connectors are designed to be "blind-mate," meaning they connect automatically when a brick is installed, simplifying installation.

***
## Networking:
The baseline connectivity is 100 gigabits per second, which can be extended to 200 gigabits per second.
Future versions are designed to support higher speeds.

***
## Cooling:
The standard supports both traditional air-cooling and newer liquid-cooling systems.
Liquid-cooled racks use blind-mate plumbing connections for coolant, making liquid-cooled server installation as easy as air-cooled ones.

***
## Flexibility:
Open19 only specifies the physical and power/network infrastructure, not the internal components like CPUs or RAM. This allows vendors to choose their own processors and other internal hardware, promoting vendor choice.
Vendors can create and protect their intellectual property without sharing designs via an open-source license.


***
**All documentation associated with a project must be licensed under either a Creative Commons Attribution lincense (CC-BY) or, in the case of technical specifications, under a Creative Commons Attribution NoDerivs license (CC-BY-ND)**
