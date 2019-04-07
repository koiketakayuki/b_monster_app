import 'package:b_monster_app/models/lesson.dart';

class LessonState {
  LessonState(this.lessons, this.date);

  Iterable<Lesson> lessons;
  DateTime date;

  Iterable<Lesson> get filteredLessons =>
      lessons.where((l) => l.date.day == date.day && l.isReservable);

  factory LessonState.initial() {
    return LessonState([], null);
  }
}
