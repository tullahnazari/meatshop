import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeatCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MeatShop'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Theme.of(context).primaryColorDark,
            margin: EdgeInsets.only(
              left: 40,
              top: 100,
            ),
            child: SizedBox(
              height: 150,
              width: 150,
              child: RaisedButton(
                child: Text(
                  'Chicken',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Card(
            color: Theme.of(context).primaryColorDark,
            margin: EdgeInsets.only(left: 20, top: 100, right: 53),
            child: SizedBox(
              height: 150,
              width: 150,
              child: RaisedButton(
                child: Text(
                  'Cow',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
