import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final String text;

  AppIcon({Key? key,
  required this.icon,
    this.backgroundColor= Colors.white60,
    this.iconColor= Colors.black54,
    this.size=40,
    this.text= "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      // color: backgroundColor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
                  icon,
                  color: iconColor,
                  size: 35,
                ),
    );
  }
}
