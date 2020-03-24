#
# Build the private NPM repo server docker image using
# the Dockerfile just created
#
docker build -t "vrdimage:latest" -f vrd/Dockerfile.vrd .
