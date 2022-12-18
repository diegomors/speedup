import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/shared.dart';

class MyServiceItem extends StatelessWidget {
  final double containerSize;
  final bool addMargin;
  final String image;

  const MyServiceItem({
    Key? key,
    required this.containerSize,
    required this.image,
    this.addMargin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: containerSize,
          height: containerSize,
          margin: addMargin ? const EdgeInsets.symmetric(horizontal: 12) : null,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(161, 232, 255, 0.2),
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(35),
                child: SvgPicture.asset('assets/images/$image.svg'),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const MyText(
          'Título do\nserviço',
          fontWeight: FontWeight.w500,
          fontSize: 24,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
