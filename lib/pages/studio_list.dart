import 'package:flutter/material.dart';
import 'package:b_monster_app/models/studio.dart';
import 'package:b_monster_app/pages/app_shell.dart';
import 'package:b_monster_app/pages/date_list.dart';

class StudioList extends StatelessWidget {
  static final String title = 'スタジオを選択';

  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> tiles =
        Studios.all.map((studio) => ListTile(
          title: Text(studio.name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => DateList())
            );
          }
        ));

    return AppShell(
        title,
        ListView(
            children:
                ListTile.divideTiles(context: context, tiles: tiles).toList()),
        hasDrawer: false
    );
  }
}
