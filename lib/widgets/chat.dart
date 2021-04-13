import 'package:flutter/material.dart';
import 'package:lark/models/conversation_list.dart';
import 'package:provider/provider.dart';
import 'package:lark/widgets/chat_header.dart';
import 'package:lark/widgets/chat_input.dart';
import 'package:lark/widgets/chat_list.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var conversationListModel = context.watch<ConversationListModel>();
    var currentConversation = conversationListModel
        .conversations[conversationListModel.selectedIndex];

    return Column(
      children: [
        ChatHeader(
          name: currentConversation.name ?? '',
          avatar: currentConversation.avatar ?? '',
        ),
        Expanded(
          child: ChatList(),
        ),
        Container(
          child: ChatInput(),
        )
      ],
    );
  }
}
