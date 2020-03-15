#
# Now we start creating the main Verdaccio configuration file
#
cat <<"EOF" >>Dockerfile

RUN printf "%s\\n" \
  "# Look here for more config file examples:" \
  "# https://github.com/verdaccio/verdaccio/tree/master/conf" \
  "" \
  "# path to a directory with all packages" \
  "storage: $VMT/storage" \
  "" \
  "# path to a directory with plugins to include" \
  "plugins: $VMT/plugins" \
  "" \
  "auth:" \
  "  # Location of user credentials" \
  "  file: $VMNT/.htpasswd" \
  "  # Set this to -1 to disable auto-registration" \
  "  max_users: -1" \
  >$VCFG/config.yaml

EOF
