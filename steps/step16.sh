#
# We don't want the packages to disappear every time we re-build the image
# So here we create a docker volume to hold our published packages.
#
docker volume create vrdvolume
