import 'package:flutter/material.dart';
import '../../shared/shared.dart';
import 'widgets/widgets.dart';

class MyServicePage extends StatelessWidget {
  const MyServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerSize = context.width > 400 ? 132.0 : 72.0;

    return Container(
      color: const Color.fromRGBO(0, 13, 37, 1),
      width: double.infinity,
      height: 700,
      child: Column(
        children: [
          context.screenSize == ScreenSize.narrow
              ? Column(
                  children: [
                    const MyServiceTitle(
                      title: 'inicio',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 218,
                      child: PageView(
                        controller: PageController(
                          viewportFraction: 1 / 3.6,
                          initialPage: 0,
                        ),
                        padEnds: false,
                        children: [
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_1',
                              addMargin: true),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_2',
                              addMargin: true),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_3',
                              addMargin: true),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_4',
                              addMargin: true),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_5',
                              addMargin: true),
                        ],
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  width: 963,
                  child: Column(
                    children: [
                      const MyServiceTitle(
                        title: 'inicio',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_1'),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_2'),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_3'),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_4'),
                          MyServiceItem(
                              containerSize: containerSize,
                              image: 'service_icon_5'),
                        ],
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
