import 'package:flutter/material.dart';

import 'modules/modules.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'IBM Plex Sans',
      ),
      home: const MyLandingPage(),
    );
  }
}
