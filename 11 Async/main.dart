import 'dart:io';

Future<String> lookUpVersion() async {
  sleep(Duration(seconds: 1));
  print('processing');
  return '1.0.0';
}

Future checkVersion() async {
  var version = await lookUpVersion();
}

main(List<String> args) async {
  print('after');
  await lookUpVersion();
  print('before');

  print('after');
  lookUpVersion();
  print('before');
}
