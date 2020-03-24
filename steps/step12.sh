#
# Add Dockerfile commands which install:
#
#   * the Verdaccio configuration
#   * the certificate request file
#   * the helper shell scripts
#
sed -e 's/^  //' <<"EOF" >>vrd/Dockerfile.vrd

  COPY vrd/config.yaml /home/vrduser/.config/verdaccio/
  COPY vrd/certreq.cfg /tmp/
  COPY vrd/vrdstart /usr/bin/
  COPY vrd/vrdpasswd /usr/bin/

  RUN chmod 755 /usr/bin/vrdstart /usr/bin/vrdpasswd

EOF
