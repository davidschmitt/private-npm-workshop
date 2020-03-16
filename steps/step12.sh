#
# Add commands copy the Verdaccio configuration and
# certificate request files into the image
#
sed -e 's/^  //' <<"EOF" >>Dockerfile.vrd

  COPY config.yaml /home/vrduser/.config/verdaccio/
  COPY certreq.cfg /tmp/
  COPY vrdstart /usr/bin/
  COPY vrdpasswd /usr/bin/

  RUN chmod 755 /usr/bin/vrdstart /usr/bin/vrdpasswd

EOF
