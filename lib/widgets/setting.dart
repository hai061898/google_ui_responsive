import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google/utils/colors.dart';

class Setting extends StatelessWidget {
  final Function(PointerEnterEvent)? onEnter;
  final Function(PointerEnterEvent)? onExit;
  final String text;
  final bool mouseRegion;
  final bool switchValue;

  const Setting({
    Key? key,
    required this.onEnter,
    required this.mouseRegion,
    required this.onExit,
    required this.switchValue,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: onEnter,
      child: Text(
        text,
        style: TextStyle(
          decoration: mouseRegion
              ? TextDecoration.underline
              : TextDecoration.none,
          color:
              switchValue ? DarkColor.KtextColor : LightColor.KtextColor,
        ),
      ),
    );
  }
}