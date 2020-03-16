#
# Add HTTPS server related settings to the Verdaccio configuration
#
sed -e 's/^  //' <<"EOF" >>config.yaml

  listen: https://0.0.0.0:4873/

  https:
    ca:   /home/vrduser/.config/verdaccio/vrd-csr.pem
    cert: /home/vrduser/.config/verdaccio/vrd-cert.pem
    key:  /home/vrduser/.config/verdaccio/vrd-key.pem

  # Set to 0 in case 60 is not enough.
  server:
    keepAliveTimeout: 60

  web:
    title: Workshop NPM Registry

EOF
