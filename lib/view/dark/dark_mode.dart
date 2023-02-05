import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DarkMode extends StatefulWidget {
  const DarkMode ({super.key});

  @override
  State<DarkMode > createState() => _DarkMode();
}

class _DarkMode extends State<DarkMode > {
  bool checkDarkMode = false;

  final IconData _iconLight = Icons.wb_sunny;
  final IconData _iconDark = Icons.nights_stay;


  final ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amberAccent,
    ),
  );

  final ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Mode',
      debugShowCheckedModeBanner: false,
      theme: checkDarkMode ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dark & Light Theme"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  checkDarkMode = !checkDarkMode;
                });
              },
              icon: Icon(checkDarkMode ? _iconDark : _iconLight),
            )
          ],
        ),
        body: Center(
          child: TextButton(
            onPressed: () {}, 
            child: const Text("Hi"),
          ),
        ),
      ),
    );
  }
}
