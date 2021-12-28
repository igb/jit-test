GRAAL_ARGS="-XX:+UnlockExperimentalVMOptions   -XX:+EnableJVMCI   -XX:+UseJVMCICompiler -Djvmci.Compiler=graal"
LOAD_EXTERNAL_GRAAL="--module-path=./lib/graal-sdk-21.1.0.jar --upgrade-module-path=./lib/jdk.internal.vm.compiler.jar"
VMOPTS="";

if [ "$1" == "--graal" ]; then
    echo "Using Graal JIT compiler."
    VMOPTS=$GRAAL_ARGS;
elif [ "$1" == "--graal-external" ]; then
    echo "Using external Graal JIT compiler."
    VMOPTS="-verbose $LOAD_EXTERNAL_GRAAL $GRAAL_ARGS";
fi
echo
echo "running count benchmark"
echo
java -Diterations=10 $VMOPTS CountUppercase In 2021 I would like to run ALL languages in one VM.
echo
echo "running blender benchmark"
echo
java $VMOPTS Blender
