import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class MyProductNarrow extends StatelessWidget {
  const MyProductNarrow({Key? key}) : super(key: key);

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
            color: const Color.fromARGB(11, 136, 123, 123),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          MyText(
                            'Produtos',
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 400,
                      child: PageView(
                        controller: PageController(
                          viewportFraction: 1 / 2,
                          initialPage: 1,
                        ),
                        children: [
                          buildCarouselItem(),
                          buildCarouselItem(),
                          buildCarouselItem(),
                        ],
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

  buildCarouselItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const Flexible(child: MyCarouselItem()),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              MyText(
                'Titulo do produto',
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const MyText(
            'Ante mauris consectetur at mattis odio non non consequat.',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
