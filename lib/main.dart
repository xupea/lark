import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lark/models/conversation_list.dart';
import 'package:lark/models/sider.dart';
import 'package:lark/widgets/chat.dart';
import 'package:lark/widgets/listview.dart';
import 'package:lark/widgets/quick_switcher.dart';
import 'package:lark/widgets/sider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final bool isMobile = Platform.isAndroid || Platform.isIOS;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SiderModel()),
        ChangeNotifierProvider(create: (context) => ConversationListModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Row(
            children: [
              isMobile ? Container() : Sider(),
              Container(
                  width: 290,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuickSwitcher(),
                      Expanded(child: ConversationList())
                    ],
                  )),
              isMobile ? Container() : Expanded(child: Chat())
            ],
          ),
        ),
      ),
    );
  }
}
