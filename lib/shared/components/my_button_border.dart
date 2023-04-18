import 'package:flutter/material.dart';

class MyButtonBorder extends StatelessWidget {
  final String text;

  const MyButtonBorder(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        side: const BorderSide(width: 1.0, color: Color.fromRGBO(255, 255, 255, 0.7)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 6.0,
        ),
        child: Text(
          text,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.7),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'IBM Plex Mono',
          ),
        ),
      ),
    );
  }
}
