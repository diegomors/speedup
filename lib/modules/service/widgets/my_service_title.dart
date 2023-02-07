import 'package:flutter/material.dart';

import '../../../shared/components/my_text.dart';

class MyServiceTitle extends StatelessWidget {
  final String title;

  const MyServiceTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 240.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyText(
            'Serviços',
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          MyText(
            'Política de serviço >',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
