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
        colorScheme: ColorScheme(
          primary: const Color(0xFF1B4242),
          secondary: const Color(0xFF5C8374),
          tertiary: const Color(0xFF7BB8A2),
          surface: const Color(0xFFFCFAEE),
          background: const Color(0xFFFCFAEE),
          error: const Color(0xFFB8001F),
          onPrimary: const Color(0xFF1B4242),
          onSecondary: const Color(0xFF5C8374),
          onTertiary: const Color(0xFF7BB8A2),
          onSurface: const Color(0xFF1B4242),
          onBackground: const Color(0xFF1B4242),
          onError: const Color(0xFFB8001F),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
