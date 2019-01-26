#!/bin/bash

# When running the following command "curl http://www.ascii-art.de/ascii/ab/007.txt", we get some html code instead of the desired 007 ascii art
# We need to delete the "127.0.0.1 www.ascii-art.de" line in the /etc/hosts file.

# Removing the host with the following command:
sudo sed -i".bak" "/$www.ascii-art.de/d" /etc/hosts