import 'package:flutter/material.dart';
import 'package:tv_shows/base/contracts/themeable.dart';

class AppTheme extends Themeable {
  @override
  ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
    );
  }

  @override
  ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
    );
  }
}
