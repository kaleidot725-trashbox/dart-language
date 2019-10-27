main(List<String> args) {
  var count = 0;
  while (true) {
    print("count ${count++}");
    if (5 < count) {
      break;
    }
  }

  count = 0;
  while (true) {
    if (count < 5) {
      print("count ${count++}");
      continue;
    }

    break;
  }
}
