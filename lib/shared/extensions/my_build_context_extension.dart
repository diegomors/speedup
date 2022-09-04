import 'package:flutter/material.dart';

enum ScreenSize { medium, narrow, wide }

extension MyBuildContextExtension on BuildContext {
  ScreenSize get screenSize => MediaQuery.of(this).size.width > 1920
      ? ScreenSize.wide
      : MediaQuery.of(this).size.width > 800 && MediaQuery.of(this).size.width <= 1920
          ? ScreenSize.medium
          : ScreenSize.narrow;
}
