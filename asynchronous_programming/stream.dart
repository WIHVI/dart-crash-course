void main(List<String> args) async {
  // Example 1: Using an asynchronous for loop (await for) to handle the stream asynchronously
  await for (var number in getNumbers()) {
    print(number);
  }

  // Example 2: Using the listen method to handle the stream in a synchronous way
  getNumbers().listen(
    (int number) {
      print("Received number: $number");
    },
  );

  // Example 3
  try {
    await for (var name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');

  // Dead code, cannot yield after throwing an exception
  // yield 'Doe';
}
