#
# Now we add commands to create our HTTPS server certificate:
#
# * Create a signing key
# * Create a signing request using the earlier config file
# * Sign the certificate
#
cat <<"EOF" >>Dockerfile

RUN mkdir -p $VCFG \
  && cat /tmp/certreq.cfg \
  && openssl genrsa -out $VCFG/$VRD-key.pem 2048 \
  && openssl req -new -sha256 \
    -key $VCFG/$VRD-key.pem -out $VCFG/$VRD-csr.pem \
    -subj '/CN=localhost' -extensions EXT -config /tmp/certreq.cfg \
  && openssl x509 -req -in $VCFG/$VRD-csr.pem \
    -signkey $VCFG/$VRD-key.pem -out $VCFG/$VRD-cert.pem

EOF
