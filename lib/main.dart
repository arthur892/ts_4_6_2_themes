import 'package:flutter/material.dart';
import 'package:ts_4_6_2_themes/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Steckbrief Lama",
        theme: myTheme,
        //themeMode: ThemeMode.dark,
        home: Homescreen());
  }
}

ThemeData myTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    appBarTheme: AppBarTheme(color: Colors.indigo[900]),
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontSize: 20),
      bodyMedium: TextStyle(fontSize: 16),
    ));
