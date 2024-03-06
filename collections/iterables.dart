void main(List<String> args) {
  final iterable = Iterable.generate(10, (i) => getName(i));
  // print(iterable);
  for (final name in iterable) {
    print(name);
  }
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
