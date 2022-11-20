import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.screenSize == ScreenSize.wide
          ? const Color.fromRGBO(0, 13, 37, 1)
          : context.screenSize == ScreenSize.medium
              ? const Color.fromRGBO(0, 13, 37, 1)
              : Colors.orange,
      width: double.infinity,
      height: 700,
      child: context.screenSize == ScreenSize.narrow
          ? PageView(
              controller: PageController(
                viewportFraction: 1 / 3.6,
                initialPage: 0,
              ),
              children: [
                buildContainer(context),
                buildContainer(context),
                buildContainer(context),
                buildContainer(context),
                buildContainer(context),
              ],
            )
          : PageView.builder(
              controller: PageController(
                viewportFraction: 1 / 5,
                initialPage: 0,
              ),
              padEnds: false,
              itemCount: 1,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildContainer(context),
                  buildContainer(context),
                  buildContainer(context),
                  buildContainer(context),
                  buildContainer(context),
                ],
              ),
            ),
    );
  }

  buildContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37.5, right: 37.5),
      child: Container(
        width: context.screenSize == ScreenSize.narrow ? 72 : 132,
        height: context.screenSize == ScreenSize.narrow ? 72 : 132,
        // constraints: context.screenSize == ScreenSize.narrow
        //     ? const BoxConstraints(minHeight: 72, minWidth: 72)
        //     : const BoxConstraints(minHeight: 132, minWidth: 132),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(161, 232, 255, 0.2),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
