#
# Start the private NPM repo container and mount the storage volume
#
# We create a separate network so that other containers can reach it easily by name.
# We also publish the port externally so external clients could also reach it.
#

docker network create vrdnet &&

docker run --restart always -d --net vrdnet --name vrdcontainer -p "4873:4873/tcp" \
  -v vrdvolume://vrdmount "vrdimage:latest"
