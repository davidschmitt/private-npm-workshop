#
# Add package related settings to the Verdaccio configuration.
#
sed -e 's/^  //' <<"EOF" >>vrd/config.yaml

  # a list of other known repositories we can talk to
  uplinks:
    npmjs:
      url: https://registry.npmjs.org/

  # The @workshop scope will be used for packages stored in the private NPM repo
  packages:
    '@workshop/*':
      # Only authenticated users can read packages
      access: $authenticated
      # Only the pubuser can publish or remove packages
      publish: pubuser
      unpublish: pubuser

EOF
