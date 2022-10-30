class Person {
  String _name;
  String _lastName;

  Person({required String name, required String lastName})
      : _name = name,
        _lastName = lastName;

  Map<String, dynamic> toJson() => {
        'name': _name,
        'lastName': _lastName,
      };

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json['name'],
        lastName: json['lastName'],
      );
}
