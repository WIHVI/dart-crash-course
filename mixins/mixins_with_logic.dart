void main(List<String> args) {
  final plusi = Cat(age: 6);
  plusi.incrementAge();
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;

  Cat({required this.age});
}
