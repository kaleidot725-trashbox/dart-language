main(List<String> args) {
  var fooPerson = Foo<Person>();
  var fooGoodPerson = Foo<GoodPerson>();

  print(fooPerson.toString());
  print(fooGoodPerson.toString());
}

class Person {
  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName);
}

class GoodPerson extends Person {
  GoodPerson(String firstName, String lastName) : super(firstName, lastName);
}

class Foo<T extends Person> {
  String toString() => "Instance of 'Foo<$T>";
}