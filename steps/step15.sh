#
# Build the docker image for the private NPM repo server
#
docker build -t "vrdimage:latest" -f Dockerfile.vrd .
