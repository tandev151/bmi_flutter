import 'package:flutter/material.dart';

const sizedBoxHeight = 15.0;
const iconSize = 50.0;
const textStyle = TextStyle(
    color: Color(0xFF8D8E98), fontWeight: FontWeight.w500, fontSize: 40.0);

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.content});

  final IconData icon;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          content,
          style: textStyle,
        )
      ],
    );
  }
}
