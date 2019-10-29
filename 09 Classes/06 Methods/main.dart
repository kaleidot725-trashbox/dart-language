import 'dart:math';

main(List<String> args) {
  var p1 = Point(10, 20);
  var p2 = Point(20, 30);
  print(p1.distanceTo(p2));

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);

  rect.right = 12;
  print(rect.left);

  var doer = EffectiveDoer();
  doer.doSomething();
}

class Point {
  num x, y;

  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}



