import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.isDesktop ? Colors.amber : Colors.blue,
      width: double.infinity,
      height: 710,
    );
  }
}
