#
# Create a helper script to configure NPM users/passwords
#
sed -e 's/^  //' <<"EOF" >vrd/vrdpasswd
  #!/bin/bash

  /bin/htpasswd /vrdmount/.htpasswd "$1" &&
  cat /vrdmount/.htpasswd

EOF
