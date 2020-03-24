#
# The NPM HTTPS server needs a signed certificate.
# Create the certificate configuration here.
#
sed -e 's/^  //' <<"EOF" >vrd/certreq.cfg

  [dn]
  CN=localhost
  [req]
  distinguished_name=dn
  [EXT]
  subjectAltName=DNS:localhost
  keyUsage=digitalSignature
  extendedKeyUsage=serverAuth

EOF
