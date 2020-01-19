import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_module_plugin/common/AppBarBackArrow.dart';

class BaseAppBar {

  PreferredSize getAppBar(String title) {
    return PreferredSize(
      preferredSize: Size.fromHeight(44),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xaadddbdb),
              blurRadius: 5
            )
          ],
        ),
        child: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          leading: AppBarBackArrow(),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(color: const Color(0xff333333), fontSize: 16),
          ),
        ),
      ),
    );
  }
}
