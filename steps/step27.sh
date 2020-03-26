#
# Initialize the Node package which will consume the published package
#
mkdir -p pkg2 &&
cp pkg1/tsconfig.json pkg2/tsconfig.json &&
sed -e 's/^  //' <<"EOF" >pkg2/package.json

  {
    "name": "pkg2",
    "version": "1.0.0",
    "description": "Workshop Package to consume Private NPM Repo",
    "main": "dist/index.js",
    "types": "dist/index.d.ts",
    "files": [
      "dist"
    ],
    "scripts": {
      "prestart": "npm install && npx tsc",
      "start": "node dist/index"
    },
    "dependencies": {
      "@workshop/pkg1": "^1.0.0"
    },
    "devDependencies": {
      "typescript": "~3.7.5"
    }
  }

EOF
