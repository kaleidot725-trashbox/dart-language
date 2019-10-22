main(List<String> args) {
  // map
  {
    var gifts = {
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings' 
    };

    var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 'argon',
    };
  }

  // Map Constructor
  {
    var gifts = Map();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

    var nobleGases = Map();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';
  }

  // Add 
  {
    var gifts = {'first': 'partridge'};
    gifts['fourth'] = 'calling birds';
  }

  //Retrieve
  {
    var gifts = {'first': 'partridge'};
    assert(gifts['first'] == 'partridge');
  }

  // key ths isn't in a map
  {
    var gifts = {'first': 'partridge'};
    assert(gifts['fifth'] == null);
  }

  // .length
  {
    var gifts = {'first': 'partridge'};
    gifts['fourth'] = 'calling birds';
    assert(gifts.length == 2);
  }

  // constant map
  {
    final ConstantMap = const {
      2: 'helium',
      10: 'neon',
      18: 'argon'
    };
  }
}