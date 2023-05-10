import 'package:flutter/material.dart';

class TappableIcon extends StatefulWidget {
  final IconData initialIcon;
  final IconData toggledIcon;

  const TappableIcon({super.key, required this.initialIcon, required this.toggledIcon});

  @override
  _TappableIconState createState() => _TappableIconState();
}

class _TappableIconState extends State<TappableIcon> {
  bool _isTapped = false;

  void _toggleIcon() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleIcon,
      child: Icon(
        _isTapped ? widget.toggledIcon : widget.initialIcon,
      ),
    );
  }
}
