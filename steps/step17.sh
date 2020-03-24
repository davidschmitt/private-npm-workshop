#
# Actually start the private NPM registry, including:
#
#   * Create a network to help other containers reach this one by name
#   * Mount the storage for the published packages
#   * Expose the NPM registry port externally so it can be accessed outside docker
#
docker network create vrdnet &&

docker run --restart always -d --net vrdnet --name vrdcontainer -p "4873:4873/tcp" \
  -v vrdvolume://vrdmount "vrdimage:latest"
