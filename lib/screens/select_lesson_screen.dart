import 'package:b_monster_app/blocs/lesson/lesson_bloc.dart';
import 'package:b_monster_app/blocs/lesson/lesson_state.dart';
import 'package:b_monster_app/keys.dart';
import 'package:b_monster_app/models/lesson.dart';
import 'package:b_monster_app/screens/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLessonScreen extends StatelessWidget {
  SelectLessonScreen()
      : super(key: BMonsterReservationAppKeys.selectLessonScreen);

  static final String title = 'レッスンを選択';

  @override
  Widget build(BuildContext context) {
    LessonBloc lessonBloc = BlocProvider.of<LessonBloc>(context);

    return AppShell(
        title,
        BlocBuilder(
          bloc: lessonBloc,
          builder: (BuildContext context, LessonState state) {
            Iterable<LessonTile> tiles =
                state.filteredLessons.map((l) => LessonTile(lesson: l));

            return ListView(
                children: ListTile.divideTiles(context: context, tiles: tiles)
                    .toList());
          },
        ),
        hasDrawer: false);
  }
}

class LessonTile extends StatelessWidget {
  final Lesson lesson;
  final Function onTap;

  LessonTile({@required this.lesson, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(lesson.timeRangeLabel),
        title: Text(lesson.performer.name),
        subtitle: Text(lesson.programName),
        onTap: onTap);
  }
}
