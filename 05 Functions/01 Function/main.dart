final _nobleGases = ["one", "two", "three", "four"];

main(List<String> args) {

  {
    bool isNoble(int atomicNumber) {
      return _nobleGases[atomicNumber] != null;
    }
    print(isNoble(0));
    print(isNoble(2));
  }

  {
    isNoble(atomicNumber) {
      return _nobleGases[atomicNumber] != null;
    }
    print(isNoble(0));
    print(isNoble(2));
  }

  {
    bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
    print(isNoble(0));
    print(isNoble(2));
  }  
}


