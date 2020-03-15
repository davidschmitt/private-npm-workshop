#
# Add commands to configure a certificate signing request for the NPM repo 
# HTTPS server
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "[dn]" \
  "CN=localhost" \
  "[req]" \
  "distinguished_name = dn" \
  "[EXT]" \
  "subjectAltName=DNS:localhost" \
  "keyUsage=digitalSignature" \
  "extendedKeyUsage=serverAuth" \
  >/tmp/certreq.cfg

EOF
