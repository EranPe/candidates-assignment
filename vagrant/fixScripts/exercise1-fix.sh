#!/bin/bash

# Getting "curl: (7) couldn't connect to host" error when trying to run command "curl http://www.textfiles.com/art/bnbascii.txt".
# ... No route to host (from "curl -v ...")
# IP address of www.textfiles.com is 208.86.224.90 (from "curl -v ...")
# Checking Kernel IP routing table by the command: "route -n"
# It's there: "208.86.224.90   0.0.0.0         255.255.255.255 UH    0      0        0 eth0"

# Removing the destination from the list:
sudo route del -net 208.86.224.90 gw 0.0.0.0 netmask 255.255.255.255 dev eth0

# Success! can see now Beavis and Butthead ascii art


