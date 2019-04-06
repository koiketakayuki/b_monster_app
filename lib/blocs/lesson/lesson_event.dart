import 'package:b_monster_app/models/studio.dart';

abstract class LessonEvent {}

class SelectStudioEvent extends LessonEvent {
  Studio studio;

  SelectStudioEvent(this.studio);

  @override
  toString() => "SelectStudio { studio: $studio }";
}

class SelectDateEvent extends LessonEvent {
  DateTime date;

  SelectDateEvent(this.date);

  @override
  toString() => "SelectDate: { date: $date }";
}
