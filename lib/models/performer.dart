class Performer {
  final String name;

  const Performer(this.name);

  @override
  operator ==(dynamic other) {
    return other is Performer && name == other.name;
  }

  @override 
  String toString() => "<Performer $name>";

  int get hashCode => name.hashCode;
}