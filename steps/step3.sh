#
# Build a docker image to serve as the basis of other
# images used by this workshop.
#
docker build -t "vrdbase:latest" -f Dockerfile.base .
