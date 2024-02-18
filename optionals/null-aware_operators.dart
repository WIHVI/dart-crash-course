// ignore_for_file: dead_code

void main(List<String> args) {
  // Example 1
  String? nullableName;
  print(nullableName?.length);

  final String name = nullableName ?? 'Foo';
  print(name);

  print('-----------');

  // Example 2
  String? nullableCity;

  void updateCity() {
    nullableCity = 'New York';
  }

  updateCity();

  if (nullableCity?.contains('New York') ?? false) {
    print('The city is: $nullableCity');
  } else {
    print('The city is $nullableCity');
  }

  print('-----------');

  // Example 3
}
