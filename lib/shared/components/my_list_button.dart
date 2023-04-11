import 'package:flutter/material.dart';

import 'components.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildRowArea();
  }

  Widget buildRowArea() => Wrap(
          runSpacing: 22,
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            buildButton('Back-end'),
            buildButton('Front-end'),
            buildButton('Mobile'),
            buildButton('Flutter'),
            buildButton('Java'),
            buildButton('MVVM'),
            buildButton('Node.JS'),
          ]);

  Widget buildButton(String text) {
    return MyButtonBorder(text: text);
  }
}
