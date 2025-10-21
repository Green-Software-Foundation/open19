---
v1.0.0
---

# Open19 Server Specification

## Open19 Platform Overview

### General

The purpose of this document is to fully describe the Open19 platform and the components of its infrastructure. The specification will use a single instance of the platform as an example, which includes:

- Two 12RU cages
- One power shelf
- One Open19 switch
- 12RU power and data cabling solutions

While we'll focus on the above configuration in this document, we want to be clear that the Open19 platform can be configured per site and per specific adoption requirement. For example, some implementations will integrate two aforementioned items per rack, and some will go for a dual 8RU solution in a rack. We will mention different options that are currently available for buildout. The current solution needs to be fit into a 19-inch rack with 36 to 52 rack units and a minimum depth of 1000 mm, which is the only requirement for installing the Open19 platform.

Refer to the server specification for detailed description of different servers' form factors for the Open19 platform.

### Open19 Platform Background

The Open19 platform is an open standard to define a new server form factor. It is a standard that also defines data and power distribution but not the internal design of the servers to enables server design partners to innovate and build their own servers to create a competitive landscape.

The Open19 platform has the following key goals:

- Create an open standard for 19-inch rack environment for server, storage, and networking.
- Optimize rack deployment cost.
  - Reduce common infrastructure cost by 30% to 40%
  - Reduce server cost by 15% to 20%
- Enable faster rack integration.
  - 7 to 10 times faster
- Build an ecosystem that can consolidate requirements and volumes with a high adoption level.
- Accommodate with different sizes of data centers and edge solutions.

### Open19 Description

The Open19 project offers operators of data centers and edge solutions an optimized open platform. This platform is meant to be installed to any existing or new 19-inch rack and targeted to operate as a standalone disaggregated platform that only requires a 19-inch rack and 10°C to 40°C operating environment.

The Open19 platform has four main building blocks and two optional ones:

- Any 19-inch 4-post rack – The Open19 standard does not specify the rack. Any rack that is EIA compatible and at least 1000mm deep can be used.
- Brick cage – A structure that creates the common, cross supplier, and form factor.
- Data cable, and power cable for the servers creating blind mate connectivity with predefined pinouts.
- Bricks – The Open19 platform defines four form factors:
  - Brick- 1RU half width
  - Double Wide Brick (DW) – 1RU full width
  - Double High Brick (DH) – 2RU full width
  - Double High Half Width Brick (DHHW) – 2RU half width
- Power shelf – There are two types. One is up to 19.2KW in 1RU, the other is up to 38.4KW in a 2RU.
- Network switch – Eliminate the need for server DAC (Direct Attach Cable). The switch is optional but highly recommended. Standard switch can be used with the appropriate data cable.
- Battery backup unit (BBU) – This is optional.

The following diagram shows the components of the Open19 platform in a rack.

![Rack Level Open19 Platform Overview](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%201%20-%20Rack%20Level%20Open19%20Platform%20Overview.jpg)

*Figure 1: Rack Level Open19 Platform Overview*

The following sections describe the specification of a server's form factors. Refer to the Open19 system level specification for additional information.

---

## Brick (Half Width 1RU) Specifications

### Brick Dimensions

The brick is designed to be constructed to the overall dimensions shown below:

![Brick Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%202%20-%20Brick%20Dimensions.png)

*Figure 2: Brick Dimensions*

### Main PCBA

The main PCBA (Printed Circuit Board Assembly) provides blind mate connections for 12V input power and up to up to 4x25G data signals.

The PCBA is adequately supported on chassis standoffs, with the top surface of the PCB specified as a reference surface. It is located 6.5mm+/-0.5mm (0.256"+/-0.020) above the bottom surface of the sheet metal chassis.

![Brick Main PCBA](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%203%20-%20Brick%20Main%20PCBA.jpg)

*Figure 3: Brick Main PCBA*

#### PCB Dimensions

Width – 209.55mm+/- 0.25 (8.25" +/-0.010) with two clearance notches as shown. The PCB may be narrower, depending on the server vendor's requirements.

Length – As required by the server vendor.

Thickness – Nominal 2.5mm (0.097"), with the use of 4.0mm tall chassis standoffs. Thickness may vary from 1.6mm (0.063") to 3.2mm (0.125"), given the length of the supporting standoff may be adjusted to locate the PCB top surface at the 6.5mm reference height.

![Brick PCB Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%204%20-%20Brick%20PCB%20Dimensions.jpg)

*Figure 4: Brick PCB Dimensions*

### Interconnect

The brick is equipped with blind mate connectors for receiving 12V power from the power shelf and transferring data with the switch. The blind mate connectors mate with the cable connectors projected from the rear wall of the cage.

- Power connector – Amphenol DWR-L2P-BP200-101
- Data connector – Molex 171320-9032 4pr x 2, Right Angle with Guide Receptacle

The rating of power and data connectors is described below:

- Power connector – Not-To-Exceed (NTE) 35A at 12v
- Data connector – 4 Channels of 25G; refer to the platform channel description for more details.

![PCB Connectors](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%205%20-%20PCB%20Connectors.jpg)

*Figure 5: PCB Connectors*

The connectors are positioned within the brick as shown below:

![Brick PCB Overall Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%206%20-%20Brick%20PCB%20Overall%20Dimensions.jpg)

*Figure 6: Brick PCB Overall Dimensions*

![Brick PCBA Pinout Definition](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%207%20-%20Brick%20PCBA%20Pinout%20Definition.png)

*Figure 7: Brick PCBA Pinout Definition*

### Connectors Pinout

#### Data Connector

We have two type of pinout definitions, one for the fully specialized Open19 switch and the other for general purpose switches. Please note different cables are used for the two options.

**Table 1: Data Connector Pinout for Specialty Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Optional Console port | Console TX<br>SPARE (NC) | B1<br>A1 | B2<br>A2 | Console RX<br>SPARE (NC) | Optional Console port |
| Switch to Server (1G) | GE_SWITCH_BP_TX_N<br>GE_SWITCH_BP_TX_P | D1<br>C1 | D2<br>C2 | GE_SWITCH_BP_RX_N<br>GE_SWITCH_BP_RX_P | Server to Switch OOB (1G) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

**Table 2: Data Connector Pinout for Standard Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Server to Switch port3 (25G TX) | SERV3_TX_P<br>SERV3_TX_N | B1<br>A1 | B2<br>A2 | SERV4_TX_P<br>SERV4_TX_N | Server to Switch port4 (25G TX) |
| Server to Switch port3 (25G RX) | SERV3_RX_P<br>SERV3_RX_N | D1<br>C1 | D2<br>C2 | SERV4_RX_P<br>SERV4_RX_N | Switch to Server port4 (25G RX) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

#### Power Connector

**Table 3: Power Connector Pinout**

| Open19 Backplane Power connector | | | | |
|----------------------------------|---------|--------|----------|---------------------|
| Signal Description | Net name | Pin No | Net Name | Signal Description |
| 12V Backplane power | VDD12V_BP | A1 | G1 | GND | Ground |

### Brick Retention

The brick is secured into the cage with a single Southco D9-47-1302-K quarter-turn fastener, located on the right side of the faceplate. It is positioned as shown below:

![Brick Retention](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%208%20-%20Brick%20Retention.jpg)

*Figure 8: Brick Retention*

### Design Requirements

Clearance channels are required along the top edges of the brick, extending forward from the rear panel to the back of the faceplate.

![Brick Design Consideration](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%209%20-%20Brick%20Design%20Consideration.jpg)

*Figure 9: Brick Design Consideration*

![Design Consideration 3D](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2010%20-%20Design%20Consideration%203D.jpg)

*Figure 10: Design Consideration 3D*

The faceplate is notched above and below the fastener (See Figure 11). Note that the faceplate can accommodate any type of ports or drives as needed and is not required to be fully perforated.

![Brick Faceplate](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2011%20-%20Brick%20Faceplate.jpg)

*Figure 11: Brick Faceplate*

Screws and/or rivets used to secure the top cover are flush to under-flush.
The vertical edges on the rear of the brick chassis base are coined to break sharp edges.

#### Brick Keying

Two keying notches are positioned in the left and right corners of the sheet metal enclosure as shown below. All dimensions below are critical.

![Keying Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2012%20-%20Keying%20Dimensions.jpg)

*Figure 12: Keying Dimensions*

See below for typical dimensions of the airflow perforation. All dimensions below are critical.

![Safety Back Panel Perforation](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2013%20-%20Safety%20Back%20Panel%20Perforation.jpg)

*Figure 13: Safety Back Panel Perforation*

Screws and/or rivets used to secure the top cover are flush to under-flush.
The vertical edges on the rear of the brick chassis base are coined to break sharp edges.

![3D Brick Keying](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2014%20-%203D%20Brick%20Keying.jpg)

*Figure 14: 3D Brick Keying*

### Materials

The brick enclosure is constructed of sheet metal with adequate strength and rigidity. Suggested material is 0.8mm SGCC for the chassis base and 0.6mm SGCC for the top cover.

### Weight

The maximum weight of the brick, when equipped with all drives and/or accessories, is 25lbs (11.4kg).

---

## Double Wide Brick (Full Width 1RU) Specifications

### Brick Dimensions

The Double Wide (DW) brick is designed to be constructed to the overall dimensions shown below:

![Double Wide Brick Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2015%20-%20Double%20Wide%20Brick%20Dimensions.jpg)

*Figure 15: Double Wide Brick Dimensions*

### Main PCBA

The main PCBA provides blind mate connections for two 12V input power connectors and two 4x25G data signals connectors.

Note that it is optional to connect to all four connectors. Connect to all four connectors for maximum performance.

The PCBA is adequately supported on chassis base, with the top surface of the PCB specified as a reference surface. It is located 6.5mm+/-0.5mm (0.256" +/-0.020) above the bottom surface of the sheet metal chassis.

![DW Brick Main PCBA (showing only one connector set)](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2016%20-%20DW%20Brick%20Main%20PCBA%20(showing%20only%20one%20connector%20set).jpg)

*Figure 16: DW Brick Main PCBA (showing only one connector set)*

#### PCB Dimensions

Width – The DW brick can accommodate a board that is up to 438.33mm+/- 0.25 (17.257" +/-0.010) wide with two clearance notches as shown.

Length – As required by the server vendor.

Thickness – Nominal 2.5mm (0.097"), with the use of 4.0mm tall chassis standoffs. Thickness may vary from 1.6mm (0.063") to 3.2mm (0.125"), given the length of the supporting standoff may be adjusted to locate the PCB top surface at the 6.5mm reference height.

![Double Wide Brick PCB Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2017%20-%20Double%20Wide%20Brick%20PCB%20Dimensions.jpg)

*Figure 17: Double Wide Brick PCB Dimensions*

### Interconnect

The Double Wide brick is equipped with at least one set of blind mate connectors for receiving 12V power from the power shelf and transferring data with the switch. A second set of connectors may be populated, if required.

- Power connector – Amphenol DWR-L2P-BP200-101
- Signal connector – Molex 171320-9032 4pr x 2, Right Angle with Guide Receptacle

The rating of power and data connectors is described below:

- Power connector – Not-To-Exceed (NTE) 35A at 12v
- Data connector – 4 Channels of 25G; refer to the platform channel description for more details.

![PCB Connectors](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2018%20-%20PCB%20Connectors.jpg)

*Figure 18: PCB Connectors*

Note that the picture above shows only one set of connectors, which is the minimum for a Double Wide brick. The following section describes a Double Wide brick with two sets of connectors.

The connectors are positioned within the DW brick as shown below:

![Double Wide Brick PCB Overall Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2019%20-%20Double%20Wide%20Brick%20PCB%20Overall%20Dimensions.jpg)

*Figure 19: Double Wide Brick PCB Overall Dimensions*

### Connector Pinout

![Double Wide Brick PCBA Pinout Definition](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2020%20-%20Double%20Wide%20Brick%20PCBA%20Pinout%20Definition.png)


*Figure 20: Double Wide Brick PCBA Pinout Definition*

### Connectors Pinout

#### Data Connector

**Table 4: Data Connector Pinout for Specialty Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Optional Console port | Console TX<br>SPARE (NC) | B1<br>A1 | B2<br>A2 | Console RX<br>SPARE (NC) | Optional Console port |
| Switch to Server (1G) | GE_SWITCH_BP_TX_N<br>GE_SWITCH_BP_TX_P | D1<br>C1 | D2<br>C2 | GE_SWITCH_BP_RX_N<br>GE_SWITCH_BP_RX_P | Server to Switch OOB (1G) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

**Table 5: Data Connector Pinout for Standard Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Server to Switch port3 (25G TX) | SERV3_TX_P<br>SERV3_TX_N | B1<br>A1 | B2<br>A2 | SERV4_TX_P<br>SERV4_TX_N | Server to Switch port4 (25G TX) |
| Server to Switch port3 (25G RX) | SERV3_RX_P<br>SERV3_RX_N | D1<br>C1 | D2<br>C2 | SERV4_RX_P<br>SERV4_RX_N | Switch to Server port4 (25G RX) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

#### Power Connector

**Table 6: Power Connector Pinout**

| Open19 Backplane Power connector | | | | |
|----------------------------------|---------|--------|----------|---------------------|
| Signal Description | Net name | Pin No | Net Name | Signal Description |
| 12V Backplane power | VDD12V_BP | A1 | G1 | GND | Ground |

### Brick Retention

The DW brick is secured into the cage with two Southco D9-47-1302-K quarter-turn fasteners, one located on each side of the faceplate. They are positioned as shown below:

![Double Wide Brick Retention](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2021%20-%20Double%20Wide%20Brick%20Retention.jpg)

*Figure 21: Double Wide Brick Retention*

### Design Requirements

Clearance channels are required along the top edges of the DW brick, extending forward from the rear panel to the back of the faceplate.

![Double Wide Brick Design Consideration](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2022%20-%20Double%20Wide%20Brick%20Design%20Consideration.jpg)

*Figure 22: Double Wide Brick Design Consideration*

![Double Wide Brick Design Consideration 3D](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2023%20-%20Double%20Wide%20Brick%20Design%20Consideration%203D.jpg)

*Figure 23: Double Wide Brick Design Consideration 3D*

The faceplate is notched above and below the Southco fasteners.

![Double Wide Brick Faceplate](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2024%20-%20Double%20Wide%20Brick%20Faceplate.jpg)

*Figure 24: Double Wide Brick Faceplate*

Two keying notches are positioned in the left and right corners of the sheet metal enclosure as shown below. All dimensions below are critical.

![Keying Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2025%20-%20Keying%20Dimensions.jpg)

*Figure 25: Keying Dimensions*

See below for typical dimensions of the airflow perforation. All dimensions below are critical.

![Full Width Brick Safety Back Panel Perforation](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2026%20-%20Full%20Width%20Brick%20Safety%20Back%20Panel%20Perforation.jpg)

*Figure 26: Full Width Brick Safety Back Panel Perforation*

Screws and/or rivets used to secure the top cover are flush to under-flush.
The vertical edges on the rear of the brick chassis base are coined to break sharp edges.

![Full Width Brick Keying Location](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2027%20-%20Full%20Width%20Brick%20Keying%20Location%20.jpg)

*Figure 27: Full Width Brick Keying Location*

### Materials

The DW brick enclosure is constructed of sheet metal with adequate strength and rigidity. Suggested material is 0.8mm SGCC for the chassis base and 0.6mm SGCC for the top cover.

### Weight

The maximum weight of the DW brick, when equipped with all drives and/or accessories, is 50 lbs (22.7kg).

---

## Double High Half Width Brick (Half Width 2RU) Specifications

### Brick Dimensions

The DH Brick is designed to be constructed to the overall dimensions shown below:

![Double High Half Width Brick Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2028%20-%20Double%20High%20Half%20Width%20Brick%20Dimensions.jpg)

*Figure 28: Double High Half Width Brick Dimensions*

### Main PCBA

The main PCBA provides blind mate connections for 12V input power and up to 4x25G data signals.

The PCBA is adequately supported on chassis standoffs, with the top surface of the PCB specified as a reference surface. It is located 6.50mm+/-0.50mm (0.256"+/-0.020) above the bottom surface of the sheet metal chassis. A second PCBA may be installed at a reference surface height of 48.55mm+/-0.5mm (1.911"+/-0.020") above the bottom surface of the chassis.

![DWHW Brick Main PCBA](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2029%20-%20DWHW%20Brick%20Main%20PCBA.jpg)

*Figure 29: DWHW Brick Main PCBA*

#### PCB Dimensions

Width – 209.55mm+/- 0.25 (8.25" +/-0.010) with two clearance notches as shown. PCB may be narrower, depending on the server vendor's requirements.

Length – As required by the server vendor.

Thickness – Nominal 2.5mm (0.097"), with the use of 4.0mm tall chassis standoffs. Thickness may vary from 1.6mm (0.063") to 3.2mm (0.125"), given the length of the supporting standoff may be adjusted to locate the PCB top surface at the 6.5mm reference height.

![Double Wide Half Width Brick PCB Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2030%20-%20Double%20Wide%20Half%20Width%20Brick%20PCB%20Dimensions.jpg)

*Figure 30: Double Wide Half Width Brick PCB Dimensions*

### Interconnect

The brick is equipped with blind mate connectors for receiving

12V power from the power shelf and transferring data with the switch. The blind mate connectors mate with the cable connectors projected from the rear wall of the cage. The server can connect to up to two connectors from each side as needed.

- Power Connector – Amphenol DWR-L2P-BP200-101
- Signal Connector – Molex 171320-9032 4pr x 2, Right Angle with Guide Receptacle

![PCB Connectors](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2031%20-%20PCB%20Connectors.jpg)

*Figure 31: PCB Connectors*

The connectors are positioned within the brick as shown below:

![Double Wide Half Width Brick PCB Overall Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2032%20-%20Double%20Wide%20Half%20Width%20Brick%20PCB%20Overall%20Dimensions.jpg)

*Figure 32: Double Wide Half Width Brick PCB Overall Dimensions*

### Connector Pinout

![Double Wide Brick PCBA Pinout Definition](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2033%20-%20Double%20Wide%20Brick%20PCBA%20Pinout%20Definition.png)

*Figure 33: Double Wide Brick PCBA Pinout Definition*

#### Data Connector

**Table 7: Data Connector Pinout for Specialty Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Optional Console port | Console TX<br>SPARE (NC) | B1<br>A1 | B2<br>A2 | Console RX<br>SPARE (NC) | Optional Console port |
| Switch to Server (1G) | GE_SWITCH_BP_TX_N<br>GE_SWITCH_BP_TX_P | D1<br>C1 | D2<br>C2 | GE_SWITCH_BP_RX_N<br>GE_SWITCH_BP_RX_P | Server to Switch OOB (1G) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

**Table 8: Data Connector Pinout for Standard Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Server to Switch port3 (25G TX) | SERV3_TX_P<br>SERV3_TX_N | B1<br>A1 | B2<br>A2 | SERV4_TX_P<br>SERV4_TX_N | Server to Switch port4 (25G TX) |
| Server to Switch port3 (25G RX) | SERV3_RX_P<br>SERV3_RX_N | D1<br>C1 | D2<br>C2 | SERV4_RX_P<br>SERV4_RX_N | Switch to Server port4 (25G RX) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

#### Power Connector

**Table 9: Power Connector Pinout**

| Open19 Backplane Power connector | | | | |
|----------------------------------|---------|--------|----------|---------------------|
| Signal Description | Net name | Pin No | Net Name | Signal Description |
| 12V Backplane power | VDD12V_BP | A1 | G1 | GND | Ground |

### Brick Retention

The brick is secured into the cage with a single Southco D9-47-1302-K quarter-turn fastener, located on the right side of the faceplate. It is positioned as shown below:

![Double High Half Width Brick Retention](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2034%20-%20Double%20High%20Half%20Width%20Brick%20Retention.jpg)

*Figure 34: Double High Half Width Brick Retention*

### Design Requirements

Clearance channels are required along the top edges and side walls of the DHHW brick, extending forward from the rear panel to the back of the faceplate.

![Double High Half Width Brick Faceplate1](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2035%20-%20Double%20High%20Half%20Width%20Brick%20Faceplate1.jpg)

*Figure 35: Double High Half Width Brick Faceplate1*

The faceplate is notched above and below the fastener.

![Double High Half Width Brick Faceplate2](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2036%20-%20Double%20High%20Half%20Width%20Brick%20Faceplate2.jpg)

*Figure 36: Double High Half Width Brick Faceplate2*

Four keying notches are provided in the top left/right and the bottom left/right corners of the sheet metal enclosure as shown below. All dimensions below are critical.

![Half Width Double High Brick Keying Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2037%20-%20Half%20Width%20Double%20High%20Brick%20Keying%20Dimensions.jpg)

*Figure 37: Half Width Double High Brick Keying Dimensions*

See below for typical dimensions of the airflow perforation. All dimensions below are critical.

![Half Width Double High Brick Safety Back Panel Perforation](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2038%20-%20Half%20Width%20Double%20High%20Brick%20Safety%20Back%20Panel%20Perforation.jpg)

*Figure 38: Half Width Double High Brick Safety Back Panel Perforation*

Screws and/or rivets used to secure the top cover are flush to under-flush.
The vertical edges on the rear of the brick chassis base are coined to break sharp edges.

![Full Width Brick Keying Location](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2039%20-%20Full%20Width%20Brick%20Keying%20Location.jpg)

*Figure 39: Full Width Brick Keying Location*

### Materials

The DH brick enclosure is constructed of sheet metal with adequate strength and rigidity. Suggested material is 0.8mm SGCC for the chassis base and 0.6mm SGCC for the top cover.

### Weight

The maximum weight of the DH brick, when equipped with all drives and/or accessories, is 50 lbs (22.7kg).

---

## Double High Brick (Full Width 2RU) Specifications

### Brick Dimensions

The 2W2H brick is designed to be constructed to the overall dimensions shown below:

![Double High Double Wide Brick Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2040%20-%20Double%20High%20Double%20Wide%20Brick%20Dimensions.jpg)

*Figure 40: Double High Double Wide Brick Dimensions*

### Main PCBA

The main PCBA provides blind-mate connections for 12V input power and up to 4x25G data signals.

The PCBA is adequately supported on chassis standoff, with the top surface of the PCB specified as a reference surface. It is located 6.50mm+/-0.50mm (0.256" +/-0.020) above the bottom surface of the sheet metal chassis. A second PCBA may be installed at a reference surface height of 48.55mm+/-0.5mm (1.911" +/-0.020") above the bottom surface of the chassis.

![Double Wide Double High Brick Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2041%20-%20Double%20Wide%20Double%20High%20Brick%20Dimensions.jpg)

*Figure 41: Double Wide Double High Brick Dimensions*

#### PCB Dimensions

Width – The 2W2H brick can accommodate a board that is up to 438.33mm+/- 0.25 (17.257" +/-0.010) wide with two clearance notches as shown.

Length – As required by the server vendor.

Thickness – Nominal 2.5mm (0.097"), with the use of 4.0mm tall chassis standoffs. Thickness may vary from 1.6mm (0.063") to 3.2mm (0.125"), given the length of the supporting standoff may be adjusted to locate the PCB top surface at the 6.50mm and 48.55mm reference heights.

![Double Wide Double High Brick PCB Dimensions (showing one set of two)](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2042%20-%20Double%20Wide%20Double%20High%20Brick%20PCB%20Dimensions.jpg)

*Figure 42: Double Wide Double High Brick PCB Dimensions (showing one set of two)*

### Interconnect

The 2W2H brick is equipped with at least one set of blind mate connectors for receiving 12V power from the power shelf and transferring data with the switch. All four sets of connectors may be populated, if required.

- Power Connector – Amphenol DWR-L2P-BP200-101
- Signal Connector – Molex 171320-9032 4pr x 2, Right Angle with Guide Receptacle

![PCB Connectors](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2043%20-%20PCB%20Connectors.jpg)

*Figure 43: PCB Connectors*

The connectors are positioned within the 2W2H brick as shown below:

![Double Wide Double High Brick PCB Overall Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2044%20-%20Double%20Wide%20Double%20High%20Brick%20PCB%20Overall%20Dimensions.png)

*Figure 44: Double Wide Double High Brick PCB Overall Dimensions*

### Connector Pinout

![Double Wide Double High Brick PCBA Pinout Definition](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2045%20-%20Double%20Wide%20Double%20High%20Brick%20PCBA%20Pinout%20Definition.png)

*Figure 45: Double Wide Double High Brick PCBA Pinout Definition*

#### Data Connector

**Table 10: Data Connector Pinout for Speciality Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Optional Console port | Console TX<br>SPARE (NC) | B1<br>A1 | B2<br>A2 | Console RX<br>SPARE (NC) | Optional Console port |
| Switch to Server (1G) | GE_SWITCH_BP_TX_N<br>GE_SWITCH_BP_TX_P | D1<br>C1 | D2<br>C2 | GE_SWITCH_BP_RX_N<br>GE_SWITCH_BP_RX_P | Server to Switch OOB (1G) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

**Table 11: Data Connector Pinout for Standard Switch**

| Open19 Backplane Data connector | | | | |
|--------------------------------|---------|------------|----------|---------------------|
| Signal Description | Net name | Pin Number | Net Name | Signal Description |
| Server to Switch port3 (25G TX) | SERV3_TX_P<br>SERV3_TX_N | B1<br>A1 | B2<br>A2 | SERV4_TX_P<br>SERV4_TX_N | Server to Switch port4 (25G TX) |
| Server to Switch port3 (25G RX) | SERV3_RX_P<br>SERV3_RX_N | D1<br>C1 | D2<br>C2 | SERV4_RX_P<br>SERV4_RX_N | Switch to Server port4 (25G RX) |
| Server to Switch port1 (25G TX) | SERV1_TX_P<br>SERV1_TX_N | F1<br>E1 | F2<br>E2 | SERV2_TX_P<br>SERV2_TX_N | Server to Switch port2 (25G TX) |
| Switch to Server port1 (25G RX) | SERV1_RX_P<br>SERV1_RX_N | H1<br>G1 | H2<br>G2 | SERV1_RX_P<br>SERV1_RX_N | Switch to Server port2 (25G RX) |
| Ground Pin | GND | GND1...GND18 | GND | Ground Pin |

#### Power Connector

**Table 12: Power Connector Pinout**

| Open19 Backplane Power connector | | | | |
|----------------------------------|---------|--------|----------|---------------------|
| Signal Description | Net name | Pin No | Net Name | Signal Description |
| 12V Backplane power | VDD12V_BP | A1 | G1 | GND | Ground |

### Brick Retention

The 2W2H brick is secured into the cage with two Southco D9-47-1302-K quarter-turn fasteners, one located on each side of the faceplate. They are positioned as shown below:

![Double High Double Wide Brick Retention](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2046%20-%20Double%20High%20Double%20Wide%20Brick%20Retention.png)

*Figure 46: Double High Double Wide Brick Retention*

### Design Requirements

Clearance channels are required along the top edges and the side walls of the 2W2H brick, extending forward from the rear panel to the back of the faceplate.

![Double High Double Wide Brick Faceplate 1](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2047%20-%20Double%20High%20Double%20Wide%20Brick%20Faceplate%201.jpg)

*Figure 47: Double High Double Wide Brick Faceplate 1*

The faceplate is notched above and below the Southco fasteners. The thumbscrew is attached to sheet metal with a minimum thickness of 1.2mm.

![Double High Double Wide Brick Faceplate 2](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2048%20-%20Double%20High%20Double%20Wide%20Brick%20Faceplate%202.jpg)

*Figure 48: Double High Double Wide Brick Faceplate 2*

Four keying notches are provided in the top left/right and the bottom left/right corners of the sheet metal enclosure as shown below. All dimensions below are critical.

![Double Width Double High Brick Keying Dimensions](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2049%20-%20Double%20Width%20Double%20High%20Brick%20Keying%20Dimensions.jpg)

*Figure 49: Double Width Double High Brick Keying Dimensions*

See below for typical dimensions of the airflow perforation. All dimensions below are critical.

![Double Width Double High Brick Safety Back Panel Perforation](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2050%20-%20Double%20Width%20Double%20High%20Brick%20Safety%20Back%20Panel%20Perforation.jpg)

*Figure 50: Double Width Double High Brick Safety Back Panel Perforation*

Screws and/or rivets used to secure the top cover are flush to under-flush.
The vertical edges on the rear of the brick chassis base are coined to break sharp edges.

![Double High Double Wide Brick Design Consideration 3D](https://github.com/Green-Software-Foundation/open19/blob/v1.0/images/Figure%2051%20-%20Double%20High%20Double%20Wide%20Brick%20Design%20Consideration%203D.jpg)

*Figure 51: Double High Double Wide Brick Design Consideration 3D*

### Materials

The 2W2H brick enclosure is constructed of sheet metal with adequate strength and rigidity. Suggested material is 0.8mm SGCC for the chassis base and 0.6mm SGCC for the top cover.

### Weight

The maximum weight of the 2W2H brick, when equipped with all drives and/or accessories, is 100 lbs (45.4 kg).
