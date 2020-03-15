#
# We now add commands to install these prerequisite CentOS packages:
#
# * A compatible version of [NodeJS](https://rpm.nodesource.com)
# * [OpenSSL](https://www.openssl.org/) tools to control repo access
#
# We take special care to clean up in a way that minimizes Docker image size
#
cat <<"EOF" >>Dockerfile

RUN echo "clean_requirements_on_remove=1" >>/etc/yum.conf \
  && yum update -y \
  && curl -sL https://rpm.nodesource.com/setup_10.x | bash - \
  && yum install -y nodejs openssl httpd-tools \
  && yum clean all \
  && rm -rf /var/cache/yum

EOF
