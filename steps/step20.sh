#
# Initialize the Node package to be published
#
# Notice the package scope is set to @workshop
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
      "prepublishOnly": "npm install && npx tsc"
    },
    "dependencies": {
    },
    "devDependencies": {
      "typescript": "~3.7.5"
    }
  }

EOF
