
class Point {
  num x;
  num y;
  num z = 0;
}

main(List<String> args) {
  var point = Point();
  point.x = 4;
  print(point.x == 4);
  print(point.y == null);
}
