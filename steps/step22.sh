#
# Add the "Hello World" code for our published package
#
mkdir -p pkg1/src &&
sed -e 's/^  //' <<"EOF" >pkg1/src/index.ts

  export class Pkg1 {
    public static method(): void {
      console.log("Pkg1.method invoked successfully!");
    }
  }

EOF
