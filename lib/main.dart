import 'package:collhunt/Screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'College Search App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF0E3C6E),
          surfaceTint: Colors.black
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
