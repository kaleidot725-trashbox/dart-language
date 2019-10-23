Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main(List<String> args) {
  var add2 = makeAdder(2);

  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}