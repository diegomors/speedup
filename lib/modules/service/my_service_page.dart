import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerSize = context.screenSize == ScreenSize.narrow ? 72.0 : 132.0;

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
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
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
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                      buildContainer(context, containerSize),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  buildContainer(BuildContext context, double containerSize) {
    return Container(
      width: context.screenSize == ScreenSize.narrow ? 72 : 132,
      height: context.screenSize == ScreenSize.narrow ? 72 : 132,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(161, 232, 255, 0.2),
        shape: BoxShape.circle,
      ),
    );
  }
}
