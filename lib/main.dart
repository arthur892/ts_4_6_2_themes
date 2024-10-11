import 'package:flutter/material.dart';
import 'package:ts_4_6_2_themes/aufgabe1.dart';
import 'package:ts_4_6_2_themes/aufgabe2_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode _themeMode = ThemeMode.dark;

  // void _toggleThemeMode() {
  //   setState(() {
  //     _themeMode = _themeMode == ThemeMode.light
  //         ? ThemeMode.dark
  //         : _themeMode == ThemeMode.dark
  //             ? ThemeMode.system
  //             : ThemeMode.light;
  //   });
  // }
//Äquivalent
  void _toggleThemeMode() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else if (_themeMode == ThemeMode.dark) {
        _themeMode = ThemeMode.light;
      }
    });
  }

  String getText(ThemeMode themeMode) {
    return themeMode == ThemeMode.light ? "Light Theme" : "Dark Theme";
  }

  bool on = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Steckbrief Lama",
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: _themeMode,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Theme Switcher"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                      height: 100,
                      width: 200,
                      color: Colors.orange,
                      child: Switch(
                          activeColor: Colors.blue,
                          splashRadius: 50,
                          value: on,
                          onChanged: (value) => setState(() {
                                on = value;
                                _toggleThemeMode();
                              }))),
                ),
                Text(getText(_themeMode))
              ],
            ),
          ),
          floatingActionButton: ElevatedButton(
              onPressed: _toggleThemeMode, child: Text("Button")),
        ));
  }
}

ThemeData aufgabe1Theme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    appBarTheme: AppBarTheme(color: Colors.indigo[900]),
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontSize: 20),
      bodyMedium: TextStyle(fontSize: 16),
    ));
