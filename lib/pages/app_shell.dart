import 'package:flutter/material.dart';
import 'home.dart';
import 'account_settings.dart';
import 'box_preference_settings.dart';

class AppShell extends StatelessWidget {
  final String title;
  final Widget body;

  AppShell(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: body,
      drawer: Drawer(
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
              title: Text(Home.title),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text(AccountSettings.title),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountSettings()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_applications),
              title: Text(BoxPreferenceSettings.title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BoxPreferenceSettings()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
