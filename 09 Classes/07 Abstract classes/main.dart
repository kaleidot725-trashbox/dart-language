import 'dart:math';

main(List<String> args) {
  var doer = EffectiveDoer();
  doer.doSomething();
}

abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {
    print('doSomething');
  }
}