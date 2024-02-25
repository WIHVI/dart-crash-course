/// Late variables in classes
void main(List<String> args) {
  final person = Person();
  print(person.age);
  // Late variables inside classes are ony resolved when first used
  print(person.description);
}

class Person {
  late String description = calculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String calculationOfDescription() {
    print('Function "calculationOfDescription" is called');
    return 'Foo Bar';
  }
}
