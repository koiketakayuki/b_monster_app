import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';
import 'package:b_monster_app/models/lesson.dart';
import 'package:b_monster_app/models/performer.dart';

List<Lesson> parseLessonList(String body) {
  var dom = parse(body);
  var timeTable = dom.getElementById("time-table");
  var lessonColumns = timeTable.querySelectorAll(".flex-no-wrap");
  var dayLessons = lessonColumns.map((lessonColumn) => lessonColumn.querySelectorAll(".panel:not(.done)"));

  List<Lesson> results = [];
  DateTime baseDate = DateTime.now();
  for (var lessons in dayLessons) {
    results.addAll(lessons.map((l) => parseLesson(l, baseDate)));
    baseDate = baseDate.add(Duration(days: 1));
  }

  return results;
}

Lesson parseLesson(Element dom, DateTime date) {
  var performerName = dom.querySelector(".tt-instructor").text;
  var timeLabel = dom.querySelector(".tt-time").text;
  var programName = dom.querySelector(".tt-mode").text.trim();
  var link = dom.querySelector("a").attributes['href'];
  var start = link.indexOf("lesson_id=");
  var end = link.indexOf("&");
  var lessonId = link.substring(start + "lesson_id=".length, end);

  return Lesson(lessonId, Performer(performerName), programName, date, timeLabel);
}