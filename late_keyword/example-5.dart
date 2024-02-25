/// Avoiding Constructor Initialization of Late Variables
void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily1 = WrongImplementationOfFamily(members: [johnDoe, janeDoe]);
  final doeFamily2 = RightImplementationOfFamily(members: [johnDoe, janeDoe]);
  print('----------------------------');
  print(doeFamily1.membersCount);
  print(doeFamily2.membersCount);
}

class Person {
  final String name;

  Person({required this.name});
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Geting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Geting members count');
    return members.length;
  }
}
