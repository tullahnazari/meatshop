import 'package:flutter/material.dart';
import 'package:meatshop/auth_screens/authenticate.dart';
import 'package:meatshop/models/user.dart';
import 'package:meatshop/screens/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
