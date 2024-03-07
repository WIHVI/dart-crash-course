void main(List<String> args) {
  final foo = Person(
    car: Tesla.teslaModelX,
    name: 'Foo',
  );

  switch (foo.car) {
    case Tesla.teslaModelX:
      print('Foo has a Tesla Model X = ${foo.car}');
      break;
    case Tesla.teslaModelY:
      print('Foo has a Tesla Model Y = ${foo.car}');
      break;
  }
}

class Person {
  final String name;
  final Tesla car;

  const Person({
    required this.name,
    required this.car,
  });
}

enum Tesla {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Tesla({
    required this.manufacturer,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car: $manufacturer $model $year';
}

/*
  Swift enum

  enum ObjectType {
    case house(roomCount: Int, hasGarage: Bool)
    case bike(brand: String, hasBasket: Bool)
    case car(brand: String, hasTrunk: Bool)
  }

  let car = ObjectType.car(brand: "BMW", hasTrunk: true)
  let car2 = ObjectType.car(brand: "BMW", hasTrunk: false)

*/