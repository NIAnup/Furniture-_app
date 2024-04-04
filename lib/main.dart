import 'package:dev/screen/home/home.dart';
import 'package:dev/screen/start/start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture',
      home: Startpage(),
    );
  }
}
