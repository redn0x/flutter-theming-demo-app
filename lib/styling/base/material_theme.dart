import 'package:demo_theming/styling/app_theme_data.dart';
import 'package:flutter/material.dart';

class MaterialTheme {
  MaterialTheme(this.theme);

  final AppThemeData theme;

  late final ThemeData materialTheme = ThemeData.light();
}
