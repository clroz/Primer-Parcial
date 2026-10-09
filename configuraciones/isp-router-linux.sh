#!/bin/sh
set -e
hostname ISP-PRIMER-PARCIAL
ifconfig eth1 10.0.137.10 netmask 255.255.255.0 up
ifconfig eth2 203.0.113.1 netmask 255.255.255.252 up
ifconfig eth3 198.51.100.1 netmask 255.255.255.252 up
sysctl -w net.ipv4.ip_forward=1
route add default gw 10.0.137.1 eth1
route add -net 10.17.45.0 netmask 255.255.255.0 gw 203.0.113.2 eth2
route add -net 10.17.46.0 netmask 255.255.255.240 gw 203.0.113.2 eth2
route add -net 10.17.47.0 netmask 255.255.255.240 gw 198.51.100.2 eth3