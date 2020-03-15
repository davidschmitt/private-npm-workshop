#
# Package related settings to the Verdaccio main configuration
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "" \
  "# a list of other known repositories we can talk to" \
  "uplinks:" \
  "  npmjs:" \
  "    url: https://registry.npmjs.org/" \
  "" \
  "packages:" \
  "  '@workshop/*':" \
  "    access: \\$authenticated" \
  "    publish: pubuser" \
  "    unpublish: pubuser" \
  >>$VCFG/config.yaml

EOF
