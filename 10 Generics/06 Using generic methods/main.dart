main(List<String> args) {
  var s = Holder<String>("あいうえお");
  var i = Holder<int>(1000);

  print(s.value);
  print(i.value);
}

class Holder<T> {
  final T value;

  Holder(this.value);
  
  T getValue() => value;
}