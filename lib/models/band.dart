class Band {
  final String id;
  final String name;
  final int votes;

  Band({required this.id, required this.name, required this.votes});

  factory Band.fromMap(Map<String, dynamic> map) =>
     Band(
      id: map.containsKey('id') ? map['id']:'no-id',
      name: map.containsKey('name') ? map['name']:'no-name',
      votes: map.containsKey('votes') ? map['votes']:'no-votes');

}