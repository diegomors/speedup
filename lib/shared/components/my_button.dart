import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color background;

  const MyButton({
    Key? key,
    required this.text,
    this.background = const Color.fromRGBO(165, 233, 255, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      constraints: const BoxConstraints(
        maxWidth: 231,
        maxHeight: 47,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: const BorderRadius.all(Radius.circular(53)),
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
          Flexible(child: Text(text)),
        ],
      ),
    );
  }
}
