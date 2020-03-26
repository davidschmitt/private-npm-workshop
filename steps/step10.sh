#
# Create a helper script for assigning credentials to the
# private NPM repository.
#
sed -e 's/^  //' <<"EOF" >vrd/vrdpasswd
  #!/bin/bash

  echo "Please enter the following password for $1: $2"
  /bin/htpasswd /vrdmount/.htpasswd "$1"

EOF
