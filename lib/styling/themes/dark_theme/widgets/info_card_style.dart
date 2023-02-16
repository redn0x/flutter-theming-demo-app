// ignore_for_file: overridden_fields

import 'package:demo_theming/styling/widgets/info_card_style.dart';
import 'package:flutter/material.dart';

class DarkInfoCardStyle extends InfoCardStyle {
  DarkInfoCardStyle(super.theme);

  @override
  final color1 = Colors.blue[900];

  @override
  final color2 = Colors.orange[900];

  @override
  final color3 = Colors.green[900];
}
