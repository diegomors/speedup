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
                buildContainer(context, addmargin: true),
                buildContainer(context, addmargin: true),
                buildContainer(context, addmargin: true),
                buildContainer(context, addmargin: true),
                buildContainer(context, addmargin: true),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(context),
                const SizedBox(width: 75),
                buildContainer(context),
                const SizedBox(width: 75),
                buildContainer(context),
                const SizedBox(width: 75),
                buildContainer(context),
                const SizedBox(width: 75),
                buildContainer(context),
              ],
            ),
    );
  }

  buildContainer(BuildContext context, {bool addmargin = false}) {
    return Container(
      width: context.screenSize == ScreenSize.narrow ? 72 : 132,
      height: context.screenSize == ScreenSize.narrow ? 72 : 132,
      margin: addmargin ? const EdgeInsets.only(right: 75) : EdgeInsets.zero,
      constraints: context.screenSize == ScreenSize.narrow
          ? const BoxConstraints(minHeight: 72, minWidth: 72)
          : const BoxConstraints(minHeight: 132, minWidth: 132),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(161, 232, 255, 0.2),
        shape: BoxShape.circle,
      ),
    );
  }
}
