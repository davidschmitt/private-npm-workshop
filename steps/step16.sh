#
# Create a docker volume to hold our published packages.
# This ensures the package files persist even when the container
# is restarted.
#
docker volume create vrdvolume
