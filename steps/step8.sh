#
# The NPM HTTPS server needs a signed certificate.
# Create the certificate configuration here.
#
sed -e 's/^  //' <<"EOF" >vrd/certreq.cfg

  [dn]
  CN=vrdcontainer
  [req]
  distinguished_name=dn
  [EXT]
  subjectAltName=DNS:vrdcontainer
  keyUsage=digitalSignature
  extendedKeyUsage=serverAuth

EOF
