module zoo.animal.care {
//    requires kotlin.stdlib;
    requires transitive zoo.animal.feeding;
    exports zoo.animal.care.medical;
}