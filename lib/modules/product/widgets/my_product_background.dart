import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

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
        if (context.screenSize == ScreenSize.medium || context.screenSize == ScreenSize.wide) ...[
          Container(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
          ),
          if (context.screenSize == ScreenSize.wide)
            Container(
              color: const Color.fromRGBO(255, 255, 255, 0.05),
            ),
        ],
        child,
      ],
    );
  }
}
