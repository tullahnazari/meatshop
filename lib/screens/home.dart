import 'package:flutter/material.dart';
import 'package:meatshop/models/brew.dart';
import 'package:meatshop/screens/meat_category.dart';
import 'package:meatshop/screens/setting_form.dart';
import 'package:meatshop/services/auth.dart';
import 'package:meatshop/services/database.dart';
import 'package:provider/provider.dart';

import 'brew_list.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 70, horizontal: 60),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      child: Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text('Brew Crew'),
          backgroundColor: Theme.of(context).primaryColorDark,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Logout'),
            ),
            FlatButton.icon(
              onPressed: () => _showSettingsPanel(),
              icon: Icon(Icons.add),
              label: Text('Add'),
            ),
            FlatButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MeatCategory()),
                );
              },
              icon: Icon(Icons.fastfood),
              label: Text('Meats'),
            ),
          ],
        ),
        body: BrewList(),
      ),
    );
  }
}
