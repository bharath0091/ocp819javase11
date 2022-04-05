
#remove existing mods folder
rm -r mods

#create a new mods folder
mkdir mods




############feeding module##########

echo compiling api

javac -p mods -d interface/src interface/src/zoo/tours/api/*.java interface/src/module-info.java

#package
jar -cvf mods/zoo.animal.api.jar -C interface/src .

echo compiling locator

javac -p mods -d locator/src locator/src/zoo/tours/reservations/*.java locator/src/module-info.java

#package
jar -cvf mods/zoo.animal.reservations.jar -C locator/src .


echo compiling provider

javac -p mods -d provider/src provider/src/zoo/tours/agency/*.java provider/src/module-info.java

#package
jar -cvf mods/zoo.tours.agency.jar -C provider/src .

echo compiling consumer

javac -p mods -d consumer/src consumer/src/zoo/visitor/*.java consumer/src/module-info.java

#package
jar -cvf mods/zoo.visitor.jar -C consumer/src .

#run consumer
java -p mods -m zoo.visitor/zoo.visitor.Visitor



