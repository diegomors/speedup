import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import 'widgets.dart';

class MyProductNarrow extends StatelessWidget {
  const MyProductNarrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 710),
      child: MyProductBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
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
                    viewportFraction: 1 / 2.2,
                    initialPage: 0,
                  ),
                  padEnds: false,
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
