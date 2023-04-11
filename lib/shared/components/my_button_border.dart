import 'package:flutter/material.dart';

class MyButtonBorder extends StatelessWidget {
  final String text;

  const MyButtonBorder({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      constraints: const BoxConstraints(
        maxWidth: 109,
        maxHeight: 33,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          strokeAlign: StrokeAlign.center,
          color: const Color.fromRGBO(255, 255, 255, 0.7),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(49)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            blurRadius: 10.05,
            offset: Offset(0.0, 3.44),
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 27.8,
            offset: Offset(0.0, 9.52),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              child: Text(
            text,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.7),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBM Plex Mono',
            ),
          )),
        ],
      ),
    );
  }
}
