main(List<String> args) {
  assert(2 + 3 == 5);
  assert(2 - 1 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5);
  assert(5 ~/ 2 == 2);
  assert(5 % 2 == 1);
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  var a, b;

  a = 0;
  b = ++a;
  assert(a == b);

  a = 0;
  b = a++;
  assert(a != b);

  a = 0;
  b = --a;
  assert(a == b);

  a = 0;
  b = a--;
  assert(a != b);
}