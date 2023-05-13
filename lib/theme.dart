import 'package:flutter/material.dart';

class Theam {
  ThemeData DarkMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.brown),
    textTheme: TextTheme(displayLarge:TextStyle(color: Colors.lightGreen,fontSize: 20,fontWeight: FontWeight.bold) )
  );
  ThemeData LightMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.deepPurple),
    textTheme: TextTheme(displayLarge:TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold) )
  );
}

DarkText(BuildContext context)
{
  return Theme.of(context).textTheme.displayLarge;
}
LightText(BuildContext context)
{
  return Theme.of(context).textTheme.displayLarge;
}
