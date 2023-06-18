import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:demo_theming/widgets/device_card.dart';
import 'package:demo_theming/widgets/info_card.dart';
import 'package:demo_theming/widgets/room_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = AppTheme.of(context);
    final materialTheme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Welcome home',
              style: materialTheme.textTheme.titleLarge,
            ),
          ),
          const InfoCards(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Recent devices',
              style: materialTheme.textTheme.titleLarge,
            ),
          ),
          const DeviceCards(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Rooms',
              style: materialTheme.textTheme.titleLarge,
            ),
          ),
          const RoomCards(),
        ],
      ),
    );
  }
}

class DeviceCards extends StatelessWidget {
  const DeviceCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: DeviceCard(
            name: 'Lights Office',
            on: true,
          ),
        ),
        Expanded(
          child: DeviceCard(
            name: 'Radiator Kitchen',
            on: false,
          ),
        ),
      ],
    );
  }
}

class InfoCards extends StatelessWidget {
  const InfoCards({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = AppTheme.of(context);

    return Row(
      children: [
        Expanded(
          child: InfoCard(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.cloudSun),
            mainText: '27°C',
            subText: 'Utrecht',
            color: Colors.blue[500],
          ),
        ),
        Expanded(
          child: InfoCard(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.lightbulb),
            mainText: '15',
            subText: 'Active devices',
            color: Colors.orange[500],
          ),
        ),
        Expanded(
          child: InfoCard(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.bolt),
            mainText: '312​Kwh',
            subText: 'Usage',
            color: Colors.green[500],
          ),
        )
      ],
    );
  }
}

class RoomCards extends StatelessWidget {
  const RoomCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              child: RoomCard(
                image: 'assets/office.webp',
                icon: Icon(FontAwesomeIcons.computer),
                name: 'Office',
                totalDevices: 5,
                devicesOn: 1,
              ),
            ),
            Expanded(
              child: RoomCard(
                image: 'assets/livingroom.jpg',
                icon: Icon(FontAwesomeIcons.couch),
                name: 'LivingRoom',
                totalDevices: 4,
                devicesOn: 2,
              ),
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              child: RoomCard(
                image: 'assets/kitchen.webp',
                icon: Icon(FontAwesomeIcons.kitchenSet),
                name: 'Kitchen',
                totalDevices: 3,
                devicesOn: 2,
              ),
            ),
            Expanded(
              child: RoomCard(
                image: 'assets/basement.png',
                icon: Icon(FontAwesomeIcons.chair),
                name: 'Basement',
                totalDevices: 4,
                devicesOn: 0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
