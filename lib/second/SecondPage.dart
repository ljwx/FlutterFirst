import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_module_plugin/common/BaseAppBar.dart';
import 'package:flutter_module_plugin/second/ThirdPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mate = MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      title: "",
      home: ffold(),
    );
    var ff = ffold();
    return ff;
  }
}

class ffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar().getAppBar("second"),
      body: Column(
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("go back"),
            ),
          ),
          RaisedButton(
              child: Text("go third"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              })
        ],
      ),
    );
  }
}
