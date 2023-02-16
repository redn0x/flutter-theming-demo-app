import 'package:demo_theming/pages/home_page.dart';
import 'package:demo_theming/styling/app_theme.dart';
import 'package:demo_theming/styling/themes/dark_theme/dark_theme.dart';
import 'package:demo_theming/styling/themes/light_theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  bool darkThemeOn = false;

  @override
  Widget build(BuildContext context) {
    final theme = darkThemeOn ? DarkTheme() : LightTheme();

    return AppTheme(
      theme: theme,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.materialTheme,
        home: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.all(theme.spacings.small),
              child: const CircleAvatar(
                child: Icon(FontAwesomeIcons.userAstronaut),
              ),
            ),
            centerTitle: true,
            title: const Text('Goodmorning'),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    darkThemeOn = !darkThemeOn;
                  });
                },
                icon: Icon(
                  darkThemeOn ? Icons.dark_mode : Icons.light_mode,
                ),
              ),
            ],
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}
