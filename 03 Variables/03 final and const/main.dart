
main(List<String> args) {
  final name = 'Bob';
  final String nickname = 'Bobby';

  const bar = 10000;
  // bar = 100000;

  const double atm = 10.1325 * bar;

  const Object i = 3;
  const list = [i as int];
  const map = {if (i is int) i: "int"};
  const set = {if (list is List<int>) ... list};
}
