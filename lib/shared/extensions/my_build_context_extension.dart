import 'package:flutter/material.dart';

enum ScreenSize { medium, narrow, wide }

extension MyBuildContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get heigth => MediaQuery.of(this).size.height;

  ScreenSize get screenSize => width >= 1920
      ? ScreenSize.wide
      : width > 800 && width < 1920
          ? ScreenSize.medium
          : ScreenSize.narrow;
}
