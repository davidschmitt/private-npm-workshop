#
# Start the private NPM repo container and mount the storage volume
#
docker run --restart always -d --name vrdcontainer -p "443:4873/tcp" \
  -v vrdvolume://vrdmount "vrdimage:latest"
