

import 'package:flutter/material.dart';

import '../modules.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: const [
          // MyWelcomePage(),
          // MySummaryPage(),
          MyServicePage(),
          // MyProductPage(),
          // MyContactPage(),
          // MyFooterPage(),
        ],
      ),
    );
  }
}
