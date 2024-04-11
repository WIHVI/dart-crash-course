void main(List<String> args) {
  final johnDoe = FamilyMember(name: 'John Doe');
  final janeDoe = FamilyMember(name: 'Jane Doe');

  final doe = johnDoe + janeDoe;
  print(doe);
}

class FamilyMember {
  final String name;

  const FamilyMember({required this.name});

  @override
  String toString() => 'Family member (name = $name)';
}

class Family {
  final List<FamilyMember> members;

  const Family({required this.members});

  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
