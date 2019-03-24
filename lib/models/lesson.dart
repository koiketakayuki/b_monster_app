import 'performer.dart';

class Lesson {
  final String id;
  final Performer performer;
  final String programName;
  final String timeRangeLabel;

  Lesson(this.id, this.performer, this.programName, this.timeRangeLabel);

  @override
  operator ==(dynamic other) {
    return other is Lesson && id == other.id;
  }

  int get hashCode => int.parse(id);
}