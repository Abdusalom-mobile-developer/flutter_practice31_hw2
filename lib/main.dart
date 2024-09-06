import 'package:flutter/material.dart';
import 'package:flutter_practice31_hw2/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
