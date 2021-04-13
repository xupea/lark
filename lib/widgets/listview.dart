import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lark/common/hover_container.dart';
import 'package:lark/models/conversation_list.dart';

class ConversationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var conversationListModel = context.watch<ConversationListModel>();

    return Scrollbar(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: conversationListModel.conversations.length,
            itemBuilder: (context, index) {
              return HoverContainer(
                change: (newIndex) =>
                    conversationListModel.selectedIndex = newIndex,
                index: index,
                isSelected: conversationListModel.selectedIndex == index,
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 11, bottom: 11),
                child: Row(
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent[400],
                        radius: 19,
                        child: Text(
                            conversationListModel.conversations[index].avatar),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                conversationListModel.conversations[index].name,
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    )),
                            Text(
                                conversationListModel.conversations[index].time,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            conversationListModel.conversations[index].preview,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              );
            }));
  }
}
