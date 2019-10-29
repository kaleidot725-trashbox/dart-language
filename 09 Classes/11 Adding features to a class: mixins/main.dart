class Person {
  final name;
  Person(this.name);
}

class ArmedPerson extends Person with ArmForPerson {
  ArmedPerson(String name) : super(name);
}

class Animal {
  final name;
  Animal(this.name);
}

class ArmedAnimal extends Animal with ArmForAnimal {
  ArmedAnimal(String name) : super(name);
}

mixin ArmForPerson on Person{
  void rocketPunch() => print('person rocket punch!!');
}

mixin ArmForAnimal on Animal {
  void rocketPunch() => print('animal rocket punch!!');
}

main(List<String> args) {
  var person = ArmedPerson("Good Person");
  var animal = ArmedAnimal("Good Animal");

  person.rocketPunch();
  animal.rocketPunch();
}