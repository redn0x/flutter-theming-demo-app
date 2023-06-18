import 'package:flutter/material.dart';

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
    // final theme = AppTheme.of(context);

    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        clipBehavior: Clip.antiAlias,
        height: 150,
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            const SizedBox(
              height: 4,
            ),
            Text(
              mainText,
              style: const TextStyle(
                fontSize: 25,
              ),
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
