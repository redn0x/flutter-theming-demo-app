// ignore_for_file: overridden_fields

import 'package:demo_theming/styling/base/material_theme.dart';
import 'package:flutter/material.dart';

class DarkMaterialTheme extends MaterialTheme {
  DarkMaterialTheme(super.theme);

  @override
  late final ThemeData materialTheme = ThemeData.dark();
}
