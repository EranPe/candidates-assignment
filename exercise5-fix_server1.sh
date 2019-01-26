#!/bin/bash
# We would like to ssh between servers without entering a password and withoput approving new servers.
# i.e. ssh without host key checking

ssh-keygen -t rsa
# ENTER to every field (3 times)
echo ""
echo ""
echo ""

ssh-copy-id vagrant@server2
# Answer "yes"
echo "yes"
# Answer password "vagrant"
echo "vagrant"