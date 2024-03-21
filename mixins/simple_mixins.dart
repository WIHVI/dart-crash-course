void main(List<String> args) {
  final person = Person();
  print(person.speed);
  person.jump(speed: 2.2);
  person.walk(speed: 4.5);
  print(person.speed);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;
  Person() : speed = 0.0;
}
