void main(List<String> args) {
  final fooBar = Person(firstName: "Foo", lastName: "Bar");
  print(fooBar.firstName);
  print(fooBar.lastName);
  print(fooBar.fullName);

  print(getFullName(fooBar));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({required this.firstName, required this.lastName});
}
