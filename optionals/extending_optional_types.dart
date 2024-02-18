void main(List<String> args) {
  String? getFullNameOptional([String? fullName]) {
    return fullName;
  }

  final fullName1 = getFullNameOptional();
  fullName1.describe();

  final fullName2 = getFullNameOptional('Foo Bar');
  fullName2.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
