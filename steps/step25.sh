#
# Create the docker image used to publish the first package
#
docker build -t "pkg1image:latest" -f pkg1/Dockerfile.pkg1 .
