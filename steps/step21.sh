#
# Add the TypeScript compiler configuration for our published package
#
sed -e 's/^  //' <<"EOF" >pkg1/tsconfig.json

  {
    "compileOnSave": true,
    "compilerOptions": {
      "module": "commonjs",
      "outDir": "dist"
    },
    "include": [
      "src/**/*.ts"
    ]
  }

EOF
