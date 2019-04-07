import 'package:b_monster_app/blocs/lesson/lesson_bloc.dart';
import 'package:b_monster_app/blocs/lesson/lesson_event.dart';
import 'package:b_monster_app/blocs/simple_bloc_delegate.dart';
import 'package:b_monster_app/models/studio.dart';
import 'package:b_monster_app/routes.dart';
import 'package:b_monster_app/screens/account_settings_screen.dart';
import 'package:b_monster_app/screens/box_preferences_screen.dart';
import 'package:b_monster_app/screens/home_screen.dart';
import 'package:b_monster_app/screens/select_date_screen.dart';
import 'package:b_monster_app/screens/select_lesson_screen.dart';
import 'package:b_monster_app/screens/select_studio_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(BMonsterReservationApp());
}

class BMonsterReservationApp extends StatelessWidget {
  final lessonBloc = LessonBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        bloc: lessonBloc,
        child: MaterialApp(
            title: 'b-monster 自動予約アプリ',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            routes: {
              BMonsterReservationAppRoutes.home: (context) {
                return HomeScreen();
              },
              BMonsterReservationAppRoutes.accountSettings: (context) {
                return AccountSettingsScreen();
              },
              BMonsterReservationAppRoutes.boxPreferences: (context) {
                return BoxPreferencesScreen();
              },
              BMonsterReservationAppRoutes.selectDate: (context) {
                return SelectDateScreen(
                  onSelectDate: (date) {
                    lessonBloc.dispatch(SelectDateEvent(date));
                    Navigator.pushNamed(
                        context, BMonsterReservationAppRoutes.selectStudio);
                  },
                );
              },
              BMonsterReservationAppRoutes.selectStudio: (context) {
                return SelectStudioScreen(
                  onSelectStudio: (Studio studio) {
                    lessonBloc.dispatch(SelectStudioEvent(studio));
                    Navigator.pushNamed(
                        context, BMonsterReservationAppRoutes.selectLesson);
                  },
                );
              },
              BMonsterReservationAppRoutes.selectLesson: (context) {
                return SelectLessonScreen();
              }
            }));
  }
}
