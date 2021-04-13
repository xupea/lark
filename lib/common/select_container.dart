import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectedContainer extends StatefulWidget {
  final double size;
  final IconData icon;
  final bool isSelected;
  final int index;
  final Function onChange;

  const SelectedContainer(
      {Key key,
      this.size,
      this.icon,
      this.isSelected,
      this.index,
      this.onChange})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SelectedContainer();
}

class _SelectedContainer extends State<SelectedContainer> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      cursor: SystemMouseCursors.click,
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: Listener(
        onPointerUp: (event) {
          widget.onChange(widget.index);
        },
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(57, 115, 254, widget.isSelected ? 1 : 0)),
          child: Icon(
            widget.icon,
            size: widget.size,
            color: _isHover || widget.isSelected ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
