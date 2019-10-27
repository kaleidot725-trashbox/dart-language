main(List<String> args) {
  var text = "GOOD TEXT";
  var number = 99;
  var urlString = "https://google.com";
  var wrongString = "aaaaaaaaaaaaaaaaa";

  assert(text != null);
  assert(number < 100);
  assert(urlString.startsWith('https'));
  assert(wrongString.startsWith('https'),
    'URL ($urlString) should start with "https".');
}