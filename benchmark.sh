GRAAL_ARGS="-XX:+UnlockExperimentalVMOptions   -XX:+EnableJVMCI   -XX:+UseJVMCICompiler -Djvmci.Compiler=graal"
LOAD_EXTERNAL_GRAAL="--module-path=./org.graalvm.graal_sdk.jar"
VMOPTS="";

if [ "$1" == "--graal" ]; then
    echo "Using Graal JIT compiler."
    VMOPTS=$GRAAL_ARGS;
elif [ "$1" == "--graal-external" ]; then
    echo "Using external Graal JIT compiler."
    VMOPTS="$LOAD_EXTERNAL_GRAAL $GRAAL_ARGS";
fi
echo
echo "running count benchmark"
echo
java -Diterations=10 $VMOPTS CountUppercase In 2021 I would like to run ALL languages in one VM.
echo
echo "running blender benchmark"
echo
java $VMOPTS Blender
