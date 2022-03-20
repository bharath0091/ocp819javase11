
#package
jar -cvf mods/zoo.znimal.feeding.jar -C feeding/ .

#run main class in the module
java -p mods -m zoo.animal.feeding/zoo.animal.feeding.Task

