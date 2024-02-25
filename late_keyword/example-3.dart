/// Avoiding a Common Pitfall with Late Variables
void main(List<String> args) {
  final person = Person();
  // Exception printed: LateInitializationError: Field 'firstName' has not been initialized.
  try {
    print(person.fullName);
  } catch (e) {
    print(e);
  }

  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
