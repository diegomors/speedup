import 'package:flutter/material.dart';
import '../../shared/shared.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(0, 13, 37, 1),
        width: double.infinity,
        height: 700,
        child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: context.screenSize == ScreenSize.narrow
                ? PageView(
                    controller: PageController(
                      viewportFraction: 1 / 3.6,
                      initialPage: 0,
                    ),
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      buildContainer(context, addmargin: true),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context, addmargin: true),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context, addmargin: true),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context, addmargin: true),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context, addmargin: true),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildContainer(context, addmargin: true),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context),
                      const SizedBox(
                        width: 75,
                      ),
                      buildContainer(context),
                    ],
                  )));
  }

  buildContainer(BuildContext context, {bool addmargin = false}) {
    return Container(
      width: context.screenSize == ScreenSize.narrow ? 72 : 132,
      height: context.screenSize == ScreenSize.narrow ? 72 : 132,
      constraints: const BoxConstraints(minHeight: 132, minWidth: 132),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(161, 232, 255, 0.2),
        shape: BoxShape.circle,
      ),
    );
  }
}
