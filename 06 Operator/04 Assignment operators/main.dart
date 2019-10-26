main(List<String> args) {
  var value;
  var a, b;

  value = 10000;
  a = value;
  print(a);

  value = 20000;
  b ??= value;
  print(b);

  value = 30000;
  b ??= value;
  print(b);

  var c = 2;
  c *= 3;
  print(c);
}