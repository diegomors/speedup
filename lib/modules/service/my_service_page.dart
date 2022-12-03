import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerSize = context.width > 400 ? 132.0 : 72.0;

    return Container(
      color: const Color.fromRGBO(0, 13, 37, 1),
      width: double.infinity,
      height: 700,
      child: context.screenSize == ScreenSize.narrow
          ? Column(
              children: [
                SizedBox(
                  height: containerSize,
                  child: PageView(
                    controller: PageController(
                      viewportFraction: 1 / 3.6,
                      initialPage: 0,
                    ),
                    padEnds: false,
                    children: [
                      buildContainer(context, containerSize, image: 'service_icon_1', addMargin: true),
                      buildContainer(context, containerSize, image: 'service_icon_2', addMargin: true),
                      buildContainer(context, containerSize, image: 'service_icon_3', addMargin: true),
                      buildContainer(context, containerSize, image: 'service_icon_4', addMargin: true),
                      buildContainer(context, containerSize, image: 'service_icon_5', addMargin: true),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(
                  width: 963,
                  height: containerSize,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(context, containerSize, image: 'service_icon_1'),
                      buildContainer(context, containerSize, image: 'service_icon_2'),
                      buildContainer(context, containerSize, image: 'service_icon_3'),
                      buildContainer(context, containerSize, image: 'service_icon_4'),
                      buildContainer(context, containerSize, image: 'service_icon_5'),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  buildContainer(BuildContext context, double containerSize, {bool addMargin = false, required String image}) {
    return Container(
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
    );
  }
}
