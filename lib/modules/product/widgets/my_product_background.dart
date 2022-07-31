import 'package:flutter/material.dart';

class MyProductBackground extends StatelessWidget {
  final Widget child;

  const MyProductBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color.fromRGBO(0, 13, 37, 1),
        ),
        Container(
          color: const Color.fromRGBO(255, 255, 255, 0.05),
        ),
        Container(
          color: const Color.fromARGB(11, 136, 123, 123),
        ),
        child,
      ],
    );
  }
}
