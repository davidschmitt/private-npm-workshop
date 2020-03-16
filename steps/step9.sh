#
# Create a startup script that ensures all directories exist
#
sed -e 's/^  //' <<"EOF" >vrdstart
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
