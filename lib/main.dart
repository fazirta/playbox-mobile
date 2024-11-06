import 'package:flutter/material.dart';
import 'package:playbox/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playbox',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF1B4242),
          secondary: Color(0xFF5C8374),
          tertiary: Color(0xFF7BB8A2),
          surface: Color(0xFFFCFAEE),
          error: Color(0xFFB8001F),
          onPrimary: Color(0xFF1B4242),
          onSecondary: Color(0xFF5C8374),
          onTertiary: Color(0xFF7BB8A2),
          onSurface: Color(0xFF1B4242),
          onError: Color(0xFFB8001F),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
