void main(List<String> args) async {
  int sum1 = 0;
  await for (var age in getAllAges()) {
    sum1 += age;
  }
  print(sum1);

  final sum2 = await getAllAges().reduce((add));
  print(sum2);
}

int add(int a, int b) => a + b;

Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
