import 'package:b_monster_app/keys.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:b_monster_app/screens/app_shell.dart';

class SelectDateScreen extends StatelessWidget {
  SelectDateScreen({@required this.onSelectDate})
      : super(key: BMonsterReservationAppKeys.selectDateScreen);

  static final String title = '日付を選択';
  static final dateFormatter = DateFormat("M/dd(E)", "ja_JP");
  final Function onSelectDate;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("ja_JP");
    List<DateTime> dates = getDateList();
    Iterable<ListTile> tiles = dates.map((date) => ListTile(
          title: Text(dateFormatter.format(date)),
          onTap: () {
            onSelectDate(date);
          },
        ));

    return AppShell(
        title,
        ListView(
            children:
                ListTile.divideTiles(context: context, tiles: tiles).toList()),
        hasDrawer: false);
  }

  List<DateTime> getDateList() {
    DateTime today = DateTime.now();
    return [
      today,
      today.add(Duration(days: 1)),
      today.add(Duration(days: 2)),
      today.add(Duration(days: 3)),
      today.add(Duration(days: 4)),
      today.add(Duration(days: 5)),
      today.add(Duration(days: 6)),
    ];
  }
}
