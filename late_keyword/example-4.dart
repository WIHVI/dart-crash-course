/// Assigning Late Variables to Non Late Variables
void main(List<String> args) {
  /* print('Before');
  late final fullName = getFullName();
  print('After');
  print(fullName); */

  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() is callsed');
  return 'John Doe';
}
