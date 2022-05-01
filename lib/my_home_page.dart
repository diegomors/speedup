import 'package:flutter/material.dart';
import 'package:speedup/my_button.dart';
import 'package:speedup/my_carousel_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                    const Text(
                      'Seu novo título',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    const Text(
                      'Nome do produto',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
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
                                  child: MyButton(
                                    text: 'Saber mais',
                                  ),
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
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quam gravida morbi diam consequat eget sit at a. '
                        'Imperdiet nisl, aliquam eget nibh cras orci neque enim. Ante mauris consectetur at mattis odio non non consequat. ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        ),
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
