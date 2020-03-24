#
# Create a helper script to:
#
#   * Ensure Verdaccio storage directories
#   * Initialize the htpasswd file and set correct permissions
#   * Start the Verdaccio NPM registry
#
sed -e 's/^  //' <<"EOF" >vrd/vrdstart
  #!/bin/bash

  mkdir -p /vrdmount/storage
  mkdir -p /vrdmount/plugins
  PFILE=/vrdmount/.htpasswd
  if [ ! -f "$PFILE" ]
  then
    touch "$PFILE"
    chmod 600 "$PFILE"
  fi
  /usr/bin/verdaccio

EOF
