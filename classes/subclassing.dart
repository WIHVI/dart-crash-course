void main(List<String> args) {
  final v = Vehicle(wheelCount: 4);
  print(v);
  print(v.toString());

  print(Car());
  print(Bicycle(wheelCount: 2));
  print(Other(wheelCount: 6));
}

class Vehicle {
  final int wheelCount;
  const Vehicle({required this.wheelCount});
  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return 'Vehicle with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }

    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(wheelCount: 4);
}

class Bicycle extends Vehicle {
  const Bicycle({required super.wheelCount});
}

class Other extends Vehicle {
  const Other({required int wheelCount}) : super(wheelCount: wheelCount);
}
