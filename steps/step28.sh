#
# Consume the package imported from the private NPM registry
#
mkdir -p pkg2/src &&
sed -e 's/^  //' <<"EOF" >pkg2/src/index.ts

  import { Pkg1 } from "@workshop/pkg1";
  Pkg1.method();

EOF
