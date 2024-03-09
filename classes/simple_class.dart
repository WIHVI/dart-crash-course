void main(List<String> args) {
  const person = Person(
    name: 'John',
    age: 20,
  );
  print(person.name);
  print(person.age);
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}
