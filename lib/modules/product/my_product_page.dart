import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class MyProductPage extends StatelessWidget {
  const MyProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 710),
      child: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(0, 13, 37, 1),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 0.05),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const MyText(
                      'Seu novo título',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                    const MyText(
                      'Nome do produto',
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Flexible(
                            child: MyCarouselItem(),
                          ),
                          const SizedBox(width: 30),
                          Flexible(
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: const [
                                MyCarouselItem(),
                                Positioned(
                                  bottom: 30,
                                  child: MyButton(text: 'Saiba mais'),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          const Flexible(
                            child: MyCarouselItem(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 461,
                      child: MyText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam gravida morbi diam consequat eget sit at a. '
                        'Imperdiet nisl, aliquam eget nibh cras orci neque enim. Ante mauris consectetur at mattis odio non non consequat. ',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
