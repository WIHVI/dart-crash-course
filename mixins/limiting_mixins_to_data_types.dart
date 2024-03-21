void main(List<String> args) {
  Human().run();
}

class HasTwoFeet {
  const HasTwoFeet();
}

mixin CanRun on HasTwoFeet {
  void run() {
    print('$runtimeType is running');
  }
}

class Human extends HasTwoFeet with CanRun {
  const Human();
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
