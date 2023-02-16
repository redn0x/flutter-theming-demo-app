import 'package:demo_theming/styling/app_theme.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
    required this.icon,
    required this.name,
    required this.totalDevices,
    required this.devicesOn,
    required this.image,
  });

  final Icon icon;
  final String name;
  final int totalDevices;
  final int devicesOn;
  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          theme.spacings.medium,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.only(bottom: theme.spacings.medium),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          icon,
          Text(name),
          Padding(
            padding: EdgeInsets.all(
              theme.spacings.medium,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$totalDevices Devices'),
                Text('$devicesOn On'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
