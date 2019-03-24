import 'package:flutter/material.dart';
import 'app_shell.dart';

class BoxPreferenceSettings extends StatelessWidget {

  static final String title = 'ボックス優先度設定';

  @override
  Widget build(BuildContext context) {
    return AppShell(title, Text(title));
  }
}
