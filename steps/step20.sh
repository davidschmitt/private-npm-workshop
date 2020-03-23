#
# Initialize the package we plan to publish
# Notice the NPM environment setup to point the @workshop scope
# to our private NPM registry
#
mkdir -p pkg1 &&
sed -e 's/^  //' <<"EOF" >pkg1/package.json

  {
    "name": "@workshop/pkg1",
    "version": "1.0.0",
    "description": "Workshop Package for Publishing to Private NPM Repo",
    "files": [
      "dist"
    ],
    "scripts": {
      "prepublishOnly": "npm run build",
      "build": "npm run tsc",
      "prebuild": "npm install && npm run setscope && npm run setstrict && npm run login",
      "setscope": "npm set @workshop:registry=https://vrdcontainer:4873/",
      "setstrict": "npm set strict-ssl=false",
      "login": "export NODE_TLS_REJECT_UNAUTHORIZED=0 && npm adduser --scope=@workshop"
    },
    "dependencies": {
      "typescript": "~3.7.5"
    }
  }

EOF
