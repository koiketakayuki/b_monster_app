import 'package:b_monster_app/models/lesson.dart';

class LessonState {
  List<Lesson> lessons;
  DateTime date;

  LessonState._();

  factory LessonState.initial() {
    return LessonState._()..lessons = [];
  }
}
