set -ex

# Default values.
SHARDS=1
SHARD_INDEX=0

# Parse given command for variables.
while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    -n|--shards)
    SHARDS="$2"
    shift # past argument
    shift # past value
    ;;
    -i|--shard-index)
    SHARD_INDEX="$2"
    shift # past argument
    shift # past value
    ;;
esac
done

# Fetch Flutter.
git clone https://github.com/flutter/flutter.git
flutter/bin/flutter doctor -v

export PATH="$PATH":`pwd`/flutter/bin:`pwd`/flutter/bin/cache/dart-sdk/bin

cd flutter/dev/customer_testing
pub get
cd ../../..

# Now run the tests a bunch of times to try to find flakes (tests that sometimes pass
# even though they should be failing).
dart flutter/dev/customer_testing/run_tests.dart --shards $SHARDS --shard-index $SHARD_INDEX --repeat=15 --skip-template --verbose registry/*.test  
()
void while test 
while () 
(system.out.print) 
system.out.print( while test):  
out.system.while()
system.out.print(num,while,num system test); 
return ()  
system.out.print(num,num); 
system.out.println(num,num); 
return num,out,num; () 
system.out.print() 
return ();
