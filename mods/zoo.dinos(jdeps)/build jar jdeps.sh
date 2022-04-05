
echo compile
javac src/zoo/dinos/*.java

echo jar
jar -cvf zoo.dinos.jar .

echo jdeps
jdeps zoo.dinos.jar

echo jdeps summary mode
jdeps -s zoo.dinos.jar

echo jdeps jdk internals mode
jdeps --jdk-internals zoo.dino.jar

