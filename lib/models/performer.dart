class Performer {
  final String name;

  Performer(this.name);

  @override
  operator ==(dynamic other) {
    return other is Performer && name == other.name;
  }

  int get hashCode => name.hashCode;
}