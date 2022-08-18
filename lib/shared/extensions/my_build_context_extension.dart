import 'package:flutter/material.dart';

enum ScreenSize { medium, narrow, wide }

extension MyBuildContextExtension on BuildContext {
  ScreenSize get screenSize => MediaQuery.of(this).size.width > 1440
      ? ScreenSize.wide
      : MediaQuery.of(this).size.width > 428 && MediaQuery.of(this).size.width <= 1440
          ? ScreenSize.medium
          : ScreenSize.narrow;
}
