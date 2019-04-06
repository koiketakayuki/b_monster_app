import 'package:b_monster_app/keys.dart';
import 'package:flutter/material.dart';
import 'app_shell.dart';

class AccountSettingsScreen extends StatelessWidget {
  static final String title = 'アカウント設定';

  AccountSettingsScreen()
      : super(key: BMonsterReservationAppKeys.accountSettingsScreen);

  @override
  Widget build(BuildContext context) {
    return AppShell(title, Text(title));
  }
}
