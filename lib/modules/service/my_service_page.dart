import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.screenSize == ScreenSize.wide
          ? Colors.amber
          : context.screenSize == ScreenSize.medium
              ? Colors.blue
              : Colors.orange,
      width: double.infinity,
      height: 700,
    );
  }
}
