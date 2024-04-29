void main(List<String> args) async {
  // 'await' awaits for the entire stream(getNames()) to finish
  final getAllNames = await getNames().toList();
  print(getAllNames);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jack';
}
