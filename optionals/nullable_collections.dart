// ignore_for_file: dead_code

void main(List<String> args) {
  List<String?>? names;
  names?.add('Foo');
  names?.add(null);
  print(names);

  print('----------------------');

  final String? firstName = names?.first;
  print(firstName);

  print('----------------------');

  names = [];
  names.add('Foo');
  names.add(null);
  print(names);
}
