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
    // final theme = AppTheme.of(context);

    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Container(
            height: 120,
            margin: const EdgeInsets.only(bottom: 8),
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
            padding: const EdgeInsets.all(
              8,
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
