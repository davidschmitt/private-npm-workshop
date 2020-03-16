#
# Add NPM credentials for trusted users.  
#
# When prompted, pick a password for the pubuser who
# needs write access to publish packages (e.g. "password1")
#
docker exec -it vrdcontainer //usr/bin/vrdpasswd pubuser
