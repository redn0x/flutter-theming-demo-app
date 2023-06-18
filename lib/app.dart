import 'package:demo_theming/pages/home_page.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkThemeOn ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
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
    );
  }
}
