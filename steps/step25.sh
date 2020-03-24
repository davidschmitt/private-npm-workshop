#
# Create the docker image used to build and publish our first package
#
docker build -t "pkg1image:latest" -f pkg1/Dockerfile.pkg1 .
