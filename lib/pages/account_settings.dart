import 'package:flutter/material.dart';
import 'app_shell.dart';

class AccountSettings extends StatelessWidget {

  static final String title = 'アカウント設定';

  @override
  Widget build(BuildContext context) {
    return AppShell(title, Text(title));
  }
}
