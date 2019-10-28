class Point {
  num x, y;

  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }

  Point.withAssert(this.x, this.y) : assert(x >= 0), assert(y >= 0) {}
  Point.alongXAxis(num x) : this(x, 0);

  Point.origin() {
    this.x = 0;
    this.y = 0;
  }
}

class ImmutablePoint {
  final num x, y;
  
  const ImmutablePoint(this.x, this.y);
}

class XPoint {
  num x, y;

  XPoint(this.x, this.y);
}

class YPoint {
  num x, y;
}

class Person {
  String firstName;
  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

class SuperTuple {
  var x;
  var y;

  SuperTuple.fromJson(Map<String, num> json) : x = json['x'], y = json['y'] {
    print('In Point. fromJson: ($x, $y)');
  } 
}

class MainTuple extends SuperTuple{
  MainTuple.fromJson(Map<String, num> json) : super.fromJson(json) {
    print('In MainTuple. fromJson($x, $y)');
  }
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache =
      <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(
        name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

main(List<String> args) {
  var p1 = new Point(1, 1);
  var p2 = new Point.origin();
  var xp = new XPoint(1, 1);
  var yp = new YPoint();
  var point = new Point.withAssert(-1, -1);
  var redirect = new Point.alongXAxis(0);

  print('TEST1');
  var employee = new Employee.fromJson({});
  
  print('TEST2');  
  var person = new Person.fromJson({});

  print('TEST3');
  var tuple = new MainTuple.fromJson({});

  print('TEST4');
  var imp1 = const ImmutablePoint(1, 1);
  var imp2 = const ImmutablePoint(1, 1);
  print(identical(imp1, imp2));

  var logger1 = Logger('UI');
  var logger2 = Logger('UI');
  var logger3 = Logger('DATA');
  
  print('TEST5');
  print(identical(logger1, logger2));
  print(identical(logger1, logger3));
}