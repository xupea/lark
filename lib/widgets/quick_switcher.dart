import 'package:flutter/material.dart';
import 'package:lark/common/avatar.dart';

class QuickSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 14, left: 14, right: 14, bottom: 22),
      child: Wrap(
        spacing: 5.0,
        runSpacing: 5.0,
        children: <Widget>[
          Avatar(size: 16, text: 'Feishu'),
          Avatar(size: 16, text: 'Admin'),
          Avatar(size: 16, text: 'Google'),
          Avatar(size: 16, text: 'Microsoft'),
          Avatar(size: 16, text: 'Neo'),
          Avatar(size: 16, text: 'Peter'),
          // Avatar(size: 16, text: 'Attendence'),
          // Avatar(size: 16, text: 'Workplace'),
        ],
      ),
    );
  }
}
