main(List<String> args) {
  // Strings
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter';
  var s4 = "It's even easier to use the other delimiter.";

  // Strings expression
  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' == 'Dart has string interpolation, which is very handy.');
  assert('That deserves all caps. ${s.toUpperCase()} is very handy!' == 'That deserves all caps. STRING INTERPOLATION is very handy!');

  // Concatenate Strings
  var ss1 = 'String '
    'concatenation'
    " works even over line breaks.";
  assert(ss1 == 'String concatenation works even over line breaks.');

  var ss2 = 'The + operator ' + 'works, as well.';
  assert(ss2 == 'The + operator works, as well.');

  // Triple Quoate
  var sss1 = '''
    You can create
    multi-line strings like this one.
  ''';

  var sss2 = """This is also a
    multi-line string.""";

  // Row
  var row = r'In a raw string, not even \n gets special treatment.';
}


