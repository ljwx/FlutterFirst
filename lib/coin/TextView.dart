import 'package:flutter/widgets.dart';

class TextViewC3S14 extends StatelessWidget {
  String content;

  TextViewC3S14(String content) {
    this.content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(color: const Color(0xff333333), fontSize: 14),
    );
  }
}

class TextViewC9S12 extends StatelessWidget {
  String content;

  TextViewC9S12(String content) {
    this.content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(color: const Color(0xff999999), fontSize: 12),
    );
  }
}
