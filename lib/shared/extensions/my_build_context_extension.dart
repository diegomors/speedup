import 'package:flutter/material.dart';

extension MyBuildContextExtension on BuildContext {
  bool get isDesktop => MediaQuery.of(this).size.width > 800 ? true : false;
}