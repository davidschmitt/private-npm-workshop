#
# Add commands to sign the HTTPS server certificate.
#
sed -e 's/^  //' <<"EOF" >>vrd/Dockerfile.vrd

  RUN VRD=/home/vrduser/.config/verdaccio \
    && openssl genrsa \
      -out $VRD/vrd-key.pem 2048 \
    && openssl req -new -sha256 \
      -key $VRD/vrd-key.pem \
      -out $VRD/vrd-csr.pem \
      -subj '/CN=localhost' -extensions EXT -config /tmp/certreq.cfg \
    && openssl x509 -req \
      -in $VRD/vrd-csr.pem \
      -signkey $VRD/vrd-key.pem \
      -out $VRD/vrd-cert.pem

EOF
