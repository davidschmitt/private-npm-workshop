#
# Our private NPM repository will be running [Verdaccio](https://verdaccio.org).
#
# Begin to create a configuration file we can copy into our Docker image.
#
mkdir vrd &&
sed -e 's/^  //' <<"EOF" >vrd/config.yaml

  # Look here for more config file examples:
  # https://github.com/verdaccio/verdaccio/tree/master/conf

  # path to a directory with all packages
  storage: /vrdmount/storage

  # path to a directory with plugins to include
  plugins: /vrdmount/plugins

  auth:
    htpasswd:
      # Location of user credentials
      file: /vrdmount/.htpasswd
      # Set this to -1 to disable auto-registration
      max_users: -1

EOF
