import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import 'widgets.dart';

class MyProductMedium extends StatelessWidget {
  const MyProductMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 1091),
      child: MyProductBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
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
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: ExpandablePageView(
                    controller: PageController(
                      viewportFraction: 1 / 2,
                      initialPage: 1,
                    ),
                    children: [
                      buildCarrouselItem(),
                      buildCarrouselItem(showButton: true),
                      buildCarrouselItem(),
                    ],
                  ),
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
      ),
    );
  }

  buildCarrouselItem({bool showButton = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: MyCarouselItem(
        showButton: showButton,
        size: 461,
      ),
    );
  }
}
