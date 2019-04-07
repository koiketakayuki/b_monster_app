import 'package:b_monster_app/keys.dart';
import 'package:flutter/material.dart';
import 'package:b_monster_app/models/studio.dart';
import 'package:b_monster_app/screens/app_shell.dart';

class SelectStudioScreen extends StatelessWidget {
  SelectStudioScreen({@required this.onSelectStudio})
      : super(key: BMonsterReservationAppKeys.selectStudioScreen);

  static final String title = 'スタジオを選択';
  final Function onSelectStudio;

  @override
  Widget build(BuildContext context) {
    Iterable<ListTile> tiles = Studios.all.map((studio) => ListTile(
        title: Text(studio.name),
        onTap: () {
          onSelectStudio(studio);
        }));

    return AppShell(
        title,
        ListView(
            children:
                ListTile.divideTiles(context: context, tiles: tiles).toList()),
        hasDrawer: false);
  }
}
