import 'dart:math';

main(List<String> args) {
  var p = Point(1, 1);
  p.y = 2;
  print(p.y);

  num distance = p.distanceTo(Point(4,4));
  print(distance);

  p = null;
  p?.y = 4;
  print(p?.y);
}

class Point {
  var x;
  var y;

  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }

  num distanceTo(Point p) => sqrt(pow(p.x - this.x, 2) + pow(this.x - p.y, 2));
}