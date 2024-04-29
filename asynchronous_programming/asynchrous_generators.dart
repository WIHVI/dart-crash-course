void main(List<String> args) {
  // Example 1: Generate all integers from 0 to 4 (default range).
  var stream1 = numbers();
  stream1.listen((int value) {
    print('Example 1: $value');
  });

  // Example 2: Generate only even numbers from 0 to 9.
  var stream2 = numbers(start: 0, end: 10, func: evenNumbersOnly);
  stream2.listen((int value) {
    print('Example 2: $value');
  });

  // Example 3: Generate only odd numbers from 1 to 9.
  var stream3 = numbers(start: 0, end: 10, func: oddNumbersOnly);
  stream3.listen((int value) {
    print('Example 3: $value');
  });
}

typedef IsIncluded = bool Function(int value);

bool evenNumbersOnly(int value) => value % 2 == 0;
bool oddNumbersOnly(int value) => value % 2 != 0;

Stream<int> numbers({
  int start = 0,
  int end = 4,
  IsIncluded? func,
}) async* {
  for (var i = start; i < end; i++) {
    if (func == null || func(i)) {
      yield i;
    }
  }
}
