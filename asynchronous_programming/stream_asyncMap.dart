void main(List<String> args) async {
  // Example 1
  final result1 = getNames().asyncMap((name) => extractCharacters(name));
  await for (final list in result1) {
    print(list);
  }
  print('-------------------------------');
  // Example 2
  final result2 = await getNames()
      .asyncMap((name) => extractCharacters(name))
      .fold('Names:', (previous, element) {
    final name = element.join('');
    return '$previous $name';
  });
  print(result2);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jill';
}

Future<List<String>> extractCharacters(String from) async {
  final characters = <String>[];
  for (var character in from.split('')) {
    await Future.delayed(Duration(milliseconds: 500));
    characters.add(character);
  }
  return characters;
}
