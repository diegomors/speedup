import 'package:flutter/material.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildRowArea();
  }

  Widget buildRowArea() =>
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        buildButton('Back-end'),
        buildButton('Front-end'),
        buildButton('Mobile')
      ]);

  Widget buildButton(String text) {
    return Text(text);
  }
}
