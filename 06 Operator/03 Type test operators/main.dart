import 'dart:convert';

main(List<String> args) {
  var person = Person("Yusuke", "Katsuragawa");
  Object evilPerson = EvilPerson("Yusuke", "Katsuragawa");
  var devil = Person("Yusuke", "Katsuragawa");

  if (person is Person) {
    print("person is Person");
  }

  if (devil is! Person) {
    print("devil is not person");
  }

  var people = List<Person>();
  people.add(person);
  people.add(evilPerson as Person); 
  people.forEach((f) => print(f.firstName + " " + f.lastName));
}

class EvilPerson extends Person {
  EvilPerson(String firstName, String lastName) : super("††"+firstName, lastName+"††") { }
}

class Person {
  String firstName;
  String lastName;

  Person(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}

class Devil {
  String firstName;
  String lastName;

  Person(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
}