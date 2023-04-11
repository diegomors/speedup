

import 'package:flutter/material.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildRowArea();
  }

  Widget buildRowArea() => Wrap(children: [
        //OutlinedButton(onPressed: () {}, child: const Text('Back-end')),
        OutlinedButton(
          onPressed: null,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            side: const BorderSide(
                width: 1.0, color: Color.fromRGBO(255, 255, 255, 0.7)),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 6.0,
            ),
            child: Text(
              'Front-end',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          /* buildButton(''),
    buildButton('Front-end'),
    buildButton('Mobile'),
    buildButton('Flutter'),
    buildButton('Java'),
    buildButton('MVVM'),
    buildButton('node.JS'),*/
        ),
      ]);
}
