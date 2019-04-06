import 'package:b_monster_app/screens/account_settings_screen.dart';
import 'package:b_monster_app/screens/box_preferences_screen.dart';
import 'package:b_monster_app/screens/home_screen.dart';
import 'package:b_monster_app/routes.dart';
import 'package:flutter/material.dart';

class AppShell extends StatelessWidget {
  final String title;
  final Widget body;
  final bool hasDrawer;

  AppShell(this.title, this.body, {this.hasDrawer = true});

  @override
  Widget build(BuildContext context) {
    Widget drawer = hasDrawer
        ? Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 100.0,
                  child: DrawerHeader(
                    child: Text(
                      'メニュー',
                      style: Theme.of(context).primaryTextTheme.title,
                    ),
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(10.0),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(HomeScreen.title),
                  onTap: () {
                    Navigator.pushNamed(
                        context, BMonsterReservationAppRoutes.home);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text(AccountSettingsScreen.title),
                  onTap: () {
                    Navigator.pushNamed(
                        context, BMonsterReservationAppRoutes.accountSettings);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings_applications),
                  title: Text(BoxPreferencesScreen.title),
                  onTap: () {
                    Navigator.pushNamed(
                        context, BMonsterReservationAppRoutes.boxPreferences);
                  },
                ),
              ],
            ),
          )
        : null;

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: body,
      drawer: drawer,
    );
  }
}
