#
# Add commands copy the Verdaccio configuration and
# certificate request files into the image
#
sed -e 's/^  //' <<"EOF" >>vrd/Dockerfile.vrd

  COPY vrd/config.yaml /home/vrduser/.config/verdaccio/
  COPY vrd/certreq.cfg /tmp/
  COPY vrd/vrdstart /usr/bin/
  COPY vrd/vrdpasswd /usr/bin/

  RUN chmod 755 /usr/bin/vrdstart /usr/bin/vrdpasswd

EOF
