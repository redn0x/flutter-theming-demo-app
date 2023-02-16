import 'package:flutter/material.dart';

import 'package:demo_theming/styling/app_theme.dart';

class InfoCard extends StatelessWidget {
  final VoidCallback? onPressed;
  final Icon icon;
  final String mainText;
  final String subText;

  const InfoCard({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.mainText,
    required this.subText,
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        clipBehavior: Clip.antiAlias,
        height: theme.infoCard.height,
        padding: EdgeInsets.all(theme.spacings.medium),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            SizedBox(
              height: theme.spacings.small,
            ),
            Text(
              mainText,
              style: theme.infoCard.textStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              subText,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
