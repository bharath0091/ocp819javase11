#remove existing mods folder
rm -r mods

#create a new mods folder
mkdir mods

#package
jar -cvf mods/zoo.znimal.feeding.jar -C feeding/src .

#run main class in the module
java -p mods -m zoo.animal.feeding/zoo.animal.feeding.Task

