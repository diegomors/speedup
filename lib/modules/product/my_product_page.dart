import 'package:flutter/material.dart';

import '../../shared/shared.dart';
import 'widgets/widgets.dart';

class MyProductPage extends StatelessWidget {
  const MyProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return context.screenSize == ScreenSize.wide
        ? const MyProductWide()
        : context.screenSize == ScreenSize.medium
            ? const MyProductMedium()
            : const MyProductNarrow();
  }
}
