#
# We begin by creating a Dockerfile so we can build a Docker image
# which contains the NPM repository software.  For simplicity we have chosen
# CentOS7 as our base OS image.
#
# We also set variables for:
#
# * The base name for various Verdaccio configuration files
# * The non-privileged user which will run the NPM repo
# * The location of the NPM repo configuration files
# * The mount point for the volume where published packages will reside
#
cat <<"EOF" >Dockerfile

FROM centos:centos7
ARG VRD=vrd
ARG VUSER=vrduser
ARG VCFG=/home/$VUSER/.config/$VRD
ARG VMNT=/vrdmount

EOF
