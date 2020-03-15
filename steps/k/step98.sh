#
# Here we add the NPM repo configuration file to the Docker image.
#
# We will actually walk through that configuration file a little later.
#
cat <<EOF >>Dockerfile

COPY config.yaml $VCFG/config.yaml

EOF
