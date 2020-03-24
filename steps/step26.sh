#
#
# Build and publish the first package to the private NPM registry.
# When prompted, enter "pubuser" for the username, and the password
# you entered earlier (e.g. "password1")
#
docker run -it --net vrdnet pkg1image:latest
