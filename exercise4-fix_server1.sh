#!/bin/bash

# We need to add the option to "ssh" from server1 to server2 using "ssh server2".
# Adding the IP address to hostname by editing "/etc/hosts" file.

# Run the following command: "sudo nano /etc/hosts".
# Add the "192.168.100.11 server2" at the bottom of the list.
# Save with the same name.

# Approve new server (choose "yes")
# Password to ssh both servers is "vagrant".

# Or just use the single following command:
echo '192.168.100.11 server2' | sudo tee -a /etc/hosts
