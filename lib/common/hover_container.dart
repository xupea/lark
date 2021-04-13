import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HoverContainer extends StatefulWidget {
  final EdgeInsetsGeometry padding;
  final Widget child;
  final bool isSelected;
  final int index;

  final Function change;

  HoverContainer(
      {Key key,
      this.padding,
      this.child,
      this.isSelected,
      this.change,
      this.index})
      : super(key: key);
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: Listener(
        child: Stack(
          children: [
            Container(
              color: _isHover
                  ? Colors.grey[300]
                  : widget.isSelected
                      ? Colors.grey[200]
                      : Colors.white,
              padding: widget.padding,
              child: widget.child,
            ),
            widget.isSelected
                ? Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 3,
                      color: Color.fromRGBO(51, 113, 255, 1),
                    ))
                : Container()
          ],
        ),
        onPointerUp: (e) => widget.change(widget.index),
      ),
    );
  }
}
