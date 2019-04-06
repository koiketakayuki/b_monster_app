import 'package:b_monster_app/keys.dart';
import 'package:b_monster_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:b_monster_app/models/studio.dart';
import 'package:b_monster_app/screens/app_shell.dart';

class SelectStudioScreen extends StatelessWidget {
  static final String title = 'スタジオを選択';

  SelectStudioScreen()
      : super(key: BMonsterReservationAppKeys.selectStudioScreen);

  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> tiles = Studios.all.map((studio) => ListTile(
        title: Text(studio.name),
        onTap: () {
          Navigator.pushNamed(
              context, BMonsterReservationAppRoutes.selectLesson);
        }));

    return AppShell(
        title,
        ListView(
            children:
                ListTile.divideTiles(context: context, tiles: tiles).toList()),
        hasDrawer: false);
  }
}
