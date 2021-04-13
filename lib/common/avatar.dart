import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Function() onClick;

  final double size;

  final String text;

  const Avatar({Key key, this.size, this.text = '', this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Listener(
        onPointerUp: (event) {
          onClick();
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: size + 2,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.wikia.nocookie.net/p__/images/3/35/IronMan-EndgameProfile.jpg/revision/latest/top-crop/width/360/height/360?cb=20190425080838&path-prefix=protagonist'),
                radius: size,
              ),
            ),
            Container(
              width: (size + 2) * 2,
              child: text == ''
                  ? Container()
                  : Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      maxLines: 1,
                    ),
            )
          ],
        ));
  }
}
