#compile
#javac --module-path mods -d feeding feeding/zoo/animal/feeding/*.java feeding/module-info.java
#compile short form
javac -p mods -d feeding/src feeding/src/zoo/animal/feeding/*.java feeding/src/module-info.java

#run
#java --module-path feeding --module zoo.animal.feeding/zoo.animal.feeding.Task

#run short form, feeding
java -p feeding/src -m zoo.animal.feeding/zoo.animal.feeding.Task


