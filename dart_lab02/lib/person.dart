class Person {
  final String _firstName;
  final String _lastName;

  Person(this._firstName, this._lastName);

  String greet() {
    return 'Hello, $_firstName $_lastName!';
  }
}