main(List<String> args) {
  // optional parameter
  enableFlags(hidden: true, bold: false);
  enableFlags();

  // positional parameters
  print(say('Bob', 'Howdy'));
  print(say('Bob', 'Howdy', 'smoke signal'));

  // default parameter values
  enableFlagsDefaultParams(hidden: true, bold: false);
  enableFlagsDefaultParams();
  print(sayDefaultParams('Bob', "Howdy"));
  doStuff();
}

void enableFlags({bool bold, bool hidden}) {
  print("bold   : ${bold}");
  print("hidden : ${hidden}");
}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

void enableFlagsDefaultParams({bool bold = false, bool hidden = false}) {
  print("bold   : ${bold}");
  print("hidden : ${hidden}");
}

String sayDefaultParams(String from, String msg, [String device = 'carrie pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }

  return result;
}

void doStuff(
  {List<int> list = const[1, 2, 3],
  Map<String, String> gifts = const {
    'first': 'paper',
    'second': 'cotton',
    'third': 'leather'
  }}) {
  print('list: $list');
  print('gifts: $gifts');
}
