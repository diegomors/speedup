import 'package:flutter/material.dart';

import '../shared.dart';

class MyCarouselItem extends StatelessWidget {
  final bool showButton;

  const MyCarouselItem({
    Key? key,
    this.showButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 350,
          maxHeight: 350,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(82, 213, 255, 1),
              Color.fromRGBO(165, 244, 255, 1),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (showButton)
              const Positioned(
                bottom: 30,
                child: MyButton(text: 'Saiba mais'),
              ),
          ],
        ),
      ),
    );
  }
}