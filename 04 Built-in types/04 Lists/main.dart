main(List<String> args) {
  // list 
  {
    var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
  
    list[1] = 1;
    assert(list[1] == 1);  
  }

  // compile-time constant
  {
    var constantList = const [1, 2, 3];
    // constantList[1] = 1;
  }

  // Spread operator
  {
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    assert(list2.length == 4);
  }
  
  // null-aware spread operator
  {
    var list;
    var list2 = [0, ...?list];
    assert(list2.length == 1);
  }

  // collection if
  {
    var promoActive = false;
    var nav = [
      'Home',
      'Furniture',
      'Plants',
      if (promoActive) 'OutLet'
    ];
  }

  // collection for 
  {
    var listOfInts = [1, 2, 3];
    var listOfStrings = [
      '#0',
      for (var i in listOfInts) '#$i'
    ];
    assert(listOfStrings[1] == '#1');
  }
}