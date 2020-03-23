#
# Create a Docker file for the base docker image.
# Later we will extend this base image for the NPM private repo
# and for the devops build images
#
# * For simplicity use CentOS7 as the base OS image.
# * Install NodeJS
# * Create a non-privileged user to run commands
#
# We take special care to clean up in a way that minimizes Docker image size
#
cat <<"EOF" >Dockerfile.base

FROM centos:centos7

RUN echo "clean_requirements_on_remove=1" >>/etc/yum.conf \
  && yum update -y \
  && curl -sL https://rpm.nodesource.com/setup_12.x | bash - \
  && yum install -y nodejs openssl httpd-tools \
  && yum clean all \
  && rm -rf /var/cache/yum \
  && useradd vrduser

EOF
