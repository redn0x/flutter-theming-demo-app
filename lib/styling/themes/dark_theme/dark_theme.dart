// ignore_for_file: overridden_fields

import 'package:demo_theming/styling/app_theme_data.dart';
import 'package:demo_theming/styling/themes/dark_theme/base/material_theme.dart';
import 'package:demo_theming/styling/themes/dark_theme/widgets/info_card_style.dart';
import 'package:flutter/material.dart';

class DarkTheme extends AppThemeData {
  //base
  @override
  late final ThemeData materialTheme = DarkMaterialTheme(this).materialTheme;

  //widgets
  @override
  late final DarkInfoCardStyle infoCard = DarkInfoCardStyle(this);
}
