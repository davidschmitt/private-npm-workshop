#
# Create the Dockerfile for the Verdaccio server.
#
#   * Create the package storage mount directory
#   * Adjust permissions on that storage mount
#   * Install the Verdaccio software
#   * Create the Verdaccio configuration directory
#
sed -e 's/^  //' <<"EOF" >vrd/Dockerfile.vrd

  FROM vrdbase:latest
  RUN mkdir /vrdmount \
    && chown vrduser /vrdmount \
    && chmod 755 /vrdmount \
    && npm install --unsafe-perm -g verdaccio@4.4.2 \
    && chown -R vrduser /usr/lib/node_modules \
    && mkdir -p /home/vrduser/.config/verdaccio

EOF
