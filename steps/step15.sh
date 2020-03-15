#
# Now we are ready to start our docker container using the docker image
# We also mount the volume we created in the last step
#
docker run --restart always -d --name vrdcontainer -p "443:4873/tcp" \
  -v vrdvolume://vrdmount "vrdimage:latest"
