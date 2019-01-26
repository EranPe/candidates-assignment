#!/bin/bash
#Getting "You don't have permission to access / on this server." forbidden page when trying to access "http://192.168.100.10/" on the browser.

# Solution:
# Edit the file /etc/apache2/sites-available/default
# Change from "Deny from all" to "allow from all"
# Update the new configuration by reloading server

# Root mode
#sudo -i

# Update the message "Hello from OpsSchool" in the index.html code in /var/www (instead of "Hello World" message)
echo "<html><header><title>This is title</title></header><body>Hello from OpsSchool</body></html>" > /var/www/index.html

# Change the file from "deny" to "allow"
sed  -i  's/deny from all/allow from all/i'  /etc/apache2/sites-available/default

# Exit Root mode
#exit

# Reload the configuration to make the change happen
sudo service apache2 reload