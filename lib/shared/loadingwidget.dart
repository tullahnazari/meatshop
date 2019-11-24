import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.brown[300],
      child: Center(
        child: SpinKitWave(
          color: Colors.blueGrey,
          size: 75,
        ),
      ),
    );
  }
}
