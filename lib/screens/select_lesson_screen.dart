import 'package:b_monster_app/keys.dart';
import 'package:b_monster_app/screens/app_shell.dart';
import 'package:flutter/material.dart';

class SelectLessonScreen extends StatelessWidget {
  static final String title = 'レッスンを選択';

  SelectLessonScreen()
      : super(key: BMonsterReservationAppKeys.selectLessonScreen);

  @override
  Widget build(BuildContext context) {
    return AppShell(
      title,
      Text('予約'),
      hasDrawer: false,
    );
  }
}

// class LessonTile extends StatelessWidget {
//   final Lesson _lesson;
//   final Function _onTap;

//   LessonTile(this._lesson, this._onTap);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Text(_lesson.timeRangeLabel),
//       title: Text(_lesson.performer.name),
//       subtitle: Text(_lesson.programName),
//       onTap: _onTap,
//     );
//   }
// }
