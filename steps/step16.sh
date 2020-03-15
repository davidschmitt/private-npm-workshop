#
# In order to access the private NPM repository we need to add credentials
# for trusted users.  When prompted, pick a password for the pubuser who
# needs write access to publish packages (e.g. "workshop1")
#
docker exec -it vrdcontainer //usr/bin/vrdpasswd pubuser
