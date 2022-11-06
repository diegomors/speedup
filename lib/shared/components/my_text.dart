import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign? textAlign;
  final Color color;
  final TextOverflow? overflow;

  const MyText(
    this.text, {
    Key? key,
    this.fontWeight = FontWeight.w500,
    required this.fontSize,
    this.textAlign,
    this.color = Colors.red,
    this.overflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
