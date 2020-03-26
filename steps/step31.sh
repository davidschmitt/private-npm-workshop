#
# Create the docker image used to build and start the second package
#
docker build -t "pkg2image:latest" -f pkg2/Dockerfile.pkg2 .
