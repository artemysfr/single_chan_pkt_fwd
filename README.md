Single Channel LoRaWAN Gateway
==============================
This repository contains a proof-of-concept implementation of a single
channel LoRaWAN gateway.

It is a clone of https://github.com/tftelkamp/single_chan_pkt_fwd.git with
some user friendlyness modifications ;-)
Who's maintainer is: Thomas Telkamp <thomas@telkamp.eu>

It has been tested on the Armadeus OPOS6UL platform (+ Dragino LoRaHat),
using a Semtech SX1276 transceiver (HopeRF RFM95W).

The code is for testing and development purposes only, and is not meant 
for production usage. 

Part of the source has been copied from the Semtech Packet Forwarder 
(with permission).

Features
--------
- listen on runtime configurable frequency and spreading factor
- SF7 to SF12
- status updates
- can forward to two servers

Not (yet) supported:
- PACKET_PUSH_ACK processing
- SF7BW250 modulation
- FSK modulation
- downstream messages (tx)

Dependencies
------------
- AsDevices/WiringPi: a low level hardware access library written in C for RPi
  and the OPOS6UL.
- Run packet forwarder as root

Connections
-----------
SX1276 - OPOS6ULDev (RPi2 connector)

3.3V   - 3.3V (header pin #1) 
GND    - GND (pin #6)
MISO   - MISO (pin #21)
MOSI   - MOSI (pin #19)
SCK    - CLK (pin #23)
NSS    - GPIO6 (pin #22)
DIO0   - GPIO7 (pin #7)
RST    - GPIO0 (pin #11)

Configuration
-------------

Defaults:

- LoRa:   SF7 at 868.1 Mhz
- Server: 54.229.214.112, port 1700  (The Things Network: croft.thethings.girovito.nl)

Use runtime parameters to change configuration (--help to list them all !)

Please set location, email and description.

License
-------
The source files in this repository are made available under the Eclipse
Public License v1.0, except for the base64 implementation, that has been
copied from the Semtech Packet Forwader.
