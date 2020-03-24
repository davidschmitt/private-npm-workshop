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
      "prepublishOnly": "npm install && npx tsc"
    },
    "dependencies": {
    },
    "devDependencies": {
      "typescript": "~3.7.5"
    }
  }

EOF
