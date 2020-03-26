#
# Create a helper script to:
#
#   * Set the NPM registry for the @workshop scope
#   * Let us use a self-signed certificate
#   * Sign into the NPM registry using publisher credentials
#   * Build and execute the package
#
sed -e 's/^  //' <<"EOF" >pkg2/startpkg2
  #!/bin/bash

  npm set '@workshop:registry=https://vrdcontainer:4873' &&

  npm set strict-ssl=false &&
  export NODE_TLS_REJECT_UNAUTHORIZED=0 &&

  echo "Please enter the following when prompted below:" &&
  echo &&
  echo "  Username: blduser" &&
  echo "  Password: password1" &&
  echo "    E-mail: me@example.com" &&
  echo &&
  npm adduser --scope=@workshop &&

  npm start

EOF
