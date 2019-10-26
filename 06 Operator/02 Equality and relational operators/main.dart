main(List<String> args) {
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);

  var user1 = User("Yusuke", 20);
  var user2 = User("Yusuke", 20);

  assert(user1 == user1);
  assert(user1 != user2);
}

class User {
  String name;
  int age;

  User(String name, int age) {
    this.name = name;
    this.age = age;
  }
}