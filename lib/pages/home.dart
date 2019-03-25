import 'package:flutter/material.dart';
import 'app_shell.dart';
import 'package:b_monster_app/pages/studio_list.dart';

class Home extends StatelessWidget {
  static final String title = 'ホーム';

  @override
  Widget build(BuildContext context) {
    return AppShell(
        title,
        Center(
            child: RaisedButton(
          child: Text('予約'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StudioList()),
            );
          },
        )));
  }
}
