#
# Add web related settings to the Verdaccio main configuration
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "" \
  "listen: https://0.0.0.0:4873/" \
  "" \
  "https:" \
  "  key: $VCFG/$VRD-key.pem" \
  "  cert: $VCFG/$VRD-cert.pem" \
  "  ca: $VCFG/$VRD-csr.pem" \
  "" \
  "# Set to 0 in case 60 is not enough." \
  "server:" \
  "  keepAliveTimeout: 60" \
  "" \
  "web:" \
  "  title: Workshop NPM Registry" \
  >>$VCFG/config.yaml

EOF
