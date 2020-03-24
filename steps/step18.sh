#
# Create NPM credentials for the user who will publish packages.
#
# "password1" is used to keep this workshop simple and is not
# suitable for production use.
#
docker exec -it vrdcontainer //usr/bin/vrdpasswd pubuser password1
