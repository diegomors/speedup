import 'package:flutter/material.dart';

import '../../../shared/components/my_text.dart';

class MyServiceTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const MyServiceTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 240.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            title,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          MyText(
            subtitle,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
