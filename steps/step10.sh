#
# Add logging related settings to the Verdaccio main configuration
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "middlewares:" \
  "  audit:" \
  "    enabled: true" \
  "" \
  "# log settings" \
  "logs:" \
  "  - { type: stdout, format: pretty, level: http }" \
  >>$VCFG/config.yaml

EOF
