enum Color { red, green, blue }

main(List<String> args) {
  print(Color.red.index == 0);
  print(Color.green.index == 1);
  print(Color.blue.index == 2);
  print(Color.values);

  var aColor = Color.blue;
  switch(aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default:
      print(aColor);
  }
}