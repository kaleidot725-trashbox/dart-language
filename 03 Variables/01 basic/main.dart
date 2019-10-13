main(List<String> args) {
  printVar();
  printDyanmic();
}

printVar() {
  var name = "kaleidot725";
  print("-- var test --");
  print(name);
}

printDyanmic() {
  dynamic name = "kaleidot725";
  print("-- dynamic test --");
  print(name);

  name = 12345;
  print(name);
}