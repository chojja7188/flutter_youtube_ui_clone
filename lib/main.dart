import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/presentation/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Ui Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff0f0f0f),
          primary: Color(0xff0f0f0f),
          secondary: Color(0xfff1f1f1),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xfff1f1f1))
        ),
        useMaterial3: true,
      ),
      home: const SafeArea(child: MainScreen()),
    );
  }
}