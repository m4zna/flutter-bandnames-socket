class Band {
  final String id;
  final String name;
  final int votes;

  Band({required this.id, required this.name, required this.votes});

  factory Band.fromMap(Map<String, dynamic> map) =>
     Band(
      id: map['id'],
      name: map['name'],
      votes: map['votes']);

}