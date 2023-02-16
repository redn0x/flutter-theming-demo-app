import 'package:demo_theming/styling/app_theme_data.dart';
import 'package:flutter/material.dart';

class InfoCardStyle {
  InfoCardStyle(this.theme);

  final AppThemeData theme;

  final height = 150.0;
  late final textStyle = TextStyle(
    fontSize: theme.fontSizes.cardText,
  );

  final color1 = Colors.blue[500];
  final color2 = Colors.orange[500];
  final color3 = Colors.green[500];
}
