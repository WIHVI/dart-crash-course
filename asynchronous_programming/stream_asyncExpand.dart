void main(List<String> args) async {
  final characters = getNames().asyncExpand((name) => getCharacters(name));
  await for (var character in characters) {
    print(character);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (var i = 0; i < fromString.length; i++) {
    await Future.delayed(Duration(milliseconds: 100));
    yield fromString[i];
  }
  print('----');
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'John';
  await Future.delayed(Duration(milliseconds: 1000));
  yield 'Doe';
}
