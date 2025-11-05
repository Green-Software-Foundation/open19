# Open19 V1 Specification

The Open19 specification is a standard for data center rack and server form factors that focuses on standardized power distribution, high-performance networking, and blind-mate connectors. Key features include multiple server "brick" form factors, a modular power shelf, and support for both traditional air-cooling and newer liquid-cooling systems. It allows vendors to choose their own components while ensuring physical compatibility within the rack, promoting choice and innovation. 

- [Open19-V1-Servers-specification](https://github.com/Green-Software-Foundation/open19/blob/v1.0/discussion-docs/Open19_V1_System_Level_Specification.pdf)
- [Open19_V1_System_Level_Specification](https://github.com/Green-Software-Foundation/open19/blob/v1.0/discussion-docs/Open19_V1_System_Level_Specification.pdf)
***
## Key aspects of the Open19 specification:
Brick form factors: The standard defines several independent server "brick" form factors, including half-width 1U, full-width 1U, 2U, and a half-width 2U for GPUs.

***
### Power:
The system uses a modular power shelf that holds vendor-specific power supplies.
The Open19 v2 specification enables higher power delivery (3.5kW per brick) and supports 48V native power, which is more efficient than traditional 12V systems.
Power and data connectors are designed to be "blind-mate," meaning they connect automatically when a brick is installed, simplifying installation.

***
### Networking:
The baseline connectivity is 100 gigabits per second, which can be extended to 200 gigabits per second.
Future versions are designed to support higher speeds.

***
### Cooling:
The standard supports both traditional air-cooling and newer liquid-cooling systems.
Liquid-cooled racks use blind-mate plumbing connections for coolant, making liquid-cooled server installation as easy as air-cooled ones.

***
### Flexibility:
Open19 only specifies the physical and power/network infrastructure, not the internal components like CPUs or RAM. This allows vendors to choose their own processors and other internal hardware, promoting vendor choice.
Vendors can create and protect their intellectual property without sharing designs via an open-source license.


***
**All documentation associated with a project must be licensed under either a Creative Commons Attribution lincense (CC-BY) or, in the case of technical specifications, under a Creative Commons Attribution NoDerivs license (CC-BY-ND)**

***
***
# Open19 V2 Specification

The Open19 V2 specification, published in December 2023 by the Sustainable & Scalable Infrastructure Alliance (SSIA) under the Linux Foundation, introduces significant updates primarily focused on higher power densities, a native 48V DC power solution, and a standardized liquid cooling system. 
***
## Key updates and changes from V1 include:

### Liquid Cooling Standard: 
V2 incorporates a pluggable liquid cooling standard with blind-mate connectors, making the installation of liquid-cooled servers as simple as air-cooled equipment and eliminating external plumbing after initial setup.
***
### Power Distribution: 
The specification moves to a native 48V DC power solution from the 12V DC in V1. This is more efficient for modern data centers and aligns Open19 with other industry standards like OCP, allowing server manufacturers to adopt a single standard.
***
### Increased Power Density: 
The power delivery per "brick" (a half-width 1U server unit) is significantly increased. V1 offered 400W per brick, while V2 increases this capacity to support up to 3.5kW per brick (or 1.6kW per 1RU section), accommodating the demands of next-generation processors and AI workloads.

### Enhanced Connectivity: 
Network bandwidth per server is enhanced, with initial support for 50GbE connectivity per brick, and a path to 200GbE in the future.
***
### Simplified Cabling: 
The design continues to use blind-mate connectors for power and data, further minimizing or eliminating the need for complex, manual cabling at the rear of the rack during server installation.
Backward Compatibility: The new specification maintains the original 19-inch form factor and core principles, allowing for backward compatibility so that V1 servers can still be used in the new V2 system
