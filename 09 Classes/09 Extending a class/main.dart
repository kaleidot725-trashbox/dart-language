main(List<String> args) {
  print('TV TEST');
  var tv = Television();
  tv.turnOn();

  print('SmartTV TEST');
  var stv = SmartTelevision();
  stv.turnOn();
}

class Television {
  void turnOn() {
    _illuminateDisplay();
    _activeIrSensor();
  }

  void _illuminateDisplay() => print('_illuinateDisplay');
  void _activeIrSensor() => print('_activeIrSensor');
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApp();
  }

  void _bootNetworkInterface() => print('_bootNetworkInterface');
  void _initializeMemory() => print('_initializeMemory');
  void _upgradeApp() => print('_upgradeApps');
}