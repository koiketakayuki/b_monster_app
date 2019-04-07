import 'performer.dart';

class Lesson {
  final String id;
  final Performer performer;
  final String programName;
  final DateTime date;
  final String timeRangeLabel;

  Lesson(this.id, this.performer, this.programName, this.date,
      this.timeRangeLabel);

  @override
  operator ==(dynamic other) {
    return other is Lesson && id == other.id;
  }

  bool get isReservable =>
      programName != "STREAM ONLY" && programName != "無料体験会";

  @override
  String toString() =>
      "<Lesson($id): ${date.month}/${date.day} $timeRangeLabel $performer $programName>";

  int get hashCode => int.parse(id);
}
