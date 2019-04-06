import 'package:b_monster_app/keys.dart';
import 'package:b_monster_app/routes.dart';
import 'package:flutter/material.dart';
import 'app_shell.dart';

class HomeScreen extends StatelessWidget {
  static final String title = 'ホーム';

  HomeScreen() : super(key: BMonsterReservationAppKeys.homeScreen);

  @override
  Widget build(BuildContext context) {
    return AppShell(
        title,
        Center(
            child: RaisedButton(
          child: Text('予約'),
          onPressed: () {
            Navigator.pushNamed(
                context, BMonsterReservationAppRoutes.selectDate);
          },
        )));
  }
}
