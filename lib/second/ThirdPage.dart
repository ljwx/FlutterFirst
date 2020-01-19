import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_module_plugin/common/AppBarBackArrow.dart';
import 'package:flutter_module_plugin/common/BaseAppBar.dart';
import 'package:flutter_module_plugin/const/ConstValue.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar().getAppBar("third"),
      body: ThirdShadow(),
    );
  }
}

class ThirdShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          constraints: BoxConstraints(minHeight: 44, minWidth: double.infinity),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: const Color(0xffdddbdb), blurRadius: 20)
          ]),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            constraints:
                BoxConstraints(minHeight: 44, minWidth: double.infinity),
            child: Text(
              "文本2",
              style: TextStyle(),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          color: Colors.white,
          constraints: BoxConstraints.tightFor(width: double.infinity),
          child: Container(
            color: Colors.red,
            child: Text("colum"),
          ),
        ),
        Image.asset("assets/images/arrow_right_grey_small.png")
      ],
    );
  }
}
