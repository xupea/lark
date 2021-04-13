import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
            hintText: 'Type something', border: InputBorder.none),
        minLines: 1,
        maxLines: 5,
      ),
    );
  }
}
