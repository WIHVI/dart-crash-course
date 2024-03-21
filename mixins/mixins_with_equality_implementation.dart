void main(List<String> args) {
  const person1 = Person(id: '1', name: 'John', age: 20);
  const person2 = Person(id: '2', name: 'John', age: 20);
  const person3 = Person(id: '1', name: 'Jane', age: 20);

  print(person1 == person2);
  print(person1 == person3);
}

mixin HasIdentifier {
  String get id;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;

  const Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
