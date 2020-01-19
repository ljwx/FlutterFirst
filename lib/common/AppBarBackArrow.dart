import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarBackArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        padding: EdgeInsets.all(0),
        highlightColor: Colors.transparent,
        color: Colors.transparent,
        highlightElevation: 0,
        elevation: 0,
        child: Image.asset(
          "assets/images/appbar_back_grey.png",
          width: 28,
          height: 28,
        ),
        onPressed: () => Navigator.pop(context));
  }
}
