import 'package:flutter/material.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({
    super.key,
    required this.name,
    required this.on,
  });

  final String name;
  final bool on;

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  bool on = false;

  @override
  void initState() {
    super.initState();
    on = widget.on;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.name),
        trailing: Switch(
          onChanged: (_) {
            setState(() {
              on = !on;
            });
          },
          value: on,
        ),
      ),
    );
  }
}
