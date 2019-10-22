main(List<String> args) {
  // sets
  {
    var halogens = {'flurine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    var names = <String>{};

    var elements = <String>{};
    elements.add('flourine');
    elements.addAll(halogens);
    assert(elements.length == 5);
  }

  // compile time const
  {
    final constantSet = const {
      'fluorine',
      'chlorine',
      'bromine',
      'iodine',
      'astatine',
    };
  }
}