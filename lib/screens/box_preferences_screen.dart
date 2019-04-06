import 'package:b_monster_app/keys.dart';
import 'package:flutter/material.dart';
import 'app_shell.dart';

class BoxPreferencesScreen extends StatelessWidget {
  static final String title = 'ボックス優先度設定';

  BoxPreferencesScreen()
      : super(key: BMonsterReservationAppKeys.boxPreferencesScreen);

  @override
  Widget build(BuildContext context) {
    return AppShell(title, Text(title));
  }
}
