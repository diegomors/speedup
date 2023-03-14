import 'package:flutter/material.dart';

class MySummaryBackground extends StatelessWidget {
  final Widget child;

  const MySummaryBackground({
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
        child,
      ],
    );
  }
}
