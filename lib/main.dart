import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'stop watch',
      home: HomePage(),
    );
  }
}
