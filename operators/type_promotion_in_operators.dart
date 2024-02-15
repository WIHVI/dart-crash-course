void main(List<String> args) {
  const int x = 10;
  const double y = 10;
  final result1 = x + y;
  print(result1.runtimeType);

  const int a = 10;
  const int b = 10;
  const result2 = a + b;
  print(result2.runtimeType);
}
