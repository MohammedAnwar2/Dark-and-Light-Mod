import 'package:flutter/material.dart';

class Theam {
  ThemeData DarkMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.brown),
    textTheme: TextTheme(displayLarge:TextStyle(color: Colors.amberAccent) )
  );
  ThemeData LightMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.deepPurple),
    textTheme: TextTheme(displayLarge:TextStyle(color: Colors.blue) )
  );
}
