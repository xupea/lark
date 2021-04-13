import 'package:flutter/material.dart';

class ChatHeader extends StatefulWidget {
  final String avatar;
  final String name;

  ChatHeader({Key key, this.avatar, this.name}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChatHeaderState();
}

class _ChatHeaderState extends State<ChatHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Colors.grey[300]))),
      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              height: 42,
              width: 42,
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 19,
                child: Text(widget.avatar),
              ),
            ),
            Text(widget.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
          ]),
          Row(
            children: [
              Icon(
                Icons.favorite,
                size: 24,
              ),
              Icon(
                Icons.audiotrack,
                size: 24,
              ),
              Icon(Icons.beach_access, size: 24)
            ],
          )
        ],
      ),
    );
  }
}
