import 'package:flutter/material.dart';

class MyCarouselItem extends StatelessWidget {
  const MyCarouselItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
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
      ),
    );
  }
}
