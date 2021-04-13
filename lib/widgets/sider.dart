import 'package:flutter/material.dart';
import 'package:lark/common/avatar.dart';
import 'package:lark/common/select_container.dart';
import 'package:lark/models/sider.dart';
import 'package:provider/provider.dart';

class Sider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sider = context.watch<SiderModel>();
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(57, 65, 88, 1)),
      width: 60,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Avatar(onClick: () {}, size: 20),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: sider.items.length,
              itemBuilder: (context, index) {
                return SelectedContainer(
                  size: 24,
                  icon: sider.items[index],
                  index: index,
                  isSelected: sider.selectedIndex == index,
                  onChange: (i) {
                    sider.selectedIndex = i;
                  },
                );
              }),
        ],
      ),
    );
  }
}
