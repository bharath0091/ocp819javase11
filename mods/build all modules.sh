
############feeding module##########

#compile
#javac --module-path mods -d feeding feeding/zoo/animal/feeding/*.java feeding/module-info.java
#compile short form
javac -p mods -d feeding/src feeding/src/zoo/animal/feeding/*.java feeding/src/module-info.java

#run
#java --module-path feeding --module zoo.animal.feeding/zoo.animal.feeding.Task

#run short form, feeding
java -p feeding/src -m zoo.animal.feeding/zoo.animal.feeding.Task

#remove existing mods folder
rm -r mods

#create a new mods folder
mkdir mods

#package
jar -cvf mods/zoo.znimal.feeding.jar -C feeding/src .

#run main class in the module
java -p mods -m zoo.animal.feeding/zoo.animal.feeding.Task



############care##########

echo compiling care module
javac -p mods -d care/src care/src/zoo/animal/care/detail/*.java care/src/zoo/animal/care/medical/*.java care/src/module-info.java


jar -cvf mods/zoo.animal.care.jar -C care/src .


############talks##########

echo compiling talks module

javac -p mods -d talks/src talks/src/zoo/animal/talks/content/*.java talks/src/zoo/animal/talks/media/*.java talks/src/zoo/animal/talks/schedule/*.java

jar -cvf mods/zoo.animal.talks.jar -C talks/src .