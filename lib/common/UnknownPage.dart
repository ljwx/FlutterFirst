import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_module_plugin/common/BaseAppBar.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar().getAppBar("UnkownPage"),
      body: Center(
        child: Text("please check youre route"),
      ),
    );
  }
}
