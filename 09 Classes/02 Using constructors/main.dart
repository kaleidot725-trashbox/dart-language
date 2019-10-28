import 'dart:math';

main(List<String> args) {
  var p1 = new Point(2, 2);

  var a = new Point(1, 1);
  var b = new Point(1, 1);
  print(identical(a, b));

  var ca = const Point(1, 1);
  var cb = const Point(1, 1);
  print(identical(ca, cb));  

  var cca = const Point(1, 1);
  var ccb = const Point(1, 2);
  print(identical(cca, ccb));
}
