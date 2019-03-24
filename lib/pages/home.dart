import 'package:flutter/material.dart';
import 'app_shell.dart';

class Home extends StatelessWidget {

  static final String title = 'ホーム';

  @override
  Widget build(BuildContext context) {
    return AppShell(title, Text(title));
  }
}
