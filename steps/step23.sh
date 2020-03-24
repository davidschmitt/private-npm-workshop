#
# Create a script to help us log into the NPM registry, build and publish the
# first package.
#
sed -e 's/^  //' <<"EOF" >pkg1/publishpkg1
  #!/bin/bash
  npm set '@workshop:registry=https://vrdcontainer:4873' &&
  npm set strict-ssl=false &&
  export NODE_TLS_REJECT_UNAUTHORIZED=0 &&
  npm adduser --scope=@workshop &&
  npm publish

EOF
