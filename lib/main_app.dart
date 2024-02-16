import 'package:flutter/material.dart';
import 'package:practica3_/home_screen.dart';
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomeScreen(),
      theme:ThemeData(
        scaffoldBackgroundColor:const Color.fromARGB(218, 96, 184, 192),
        appBarTheme:const  AppBarTheme(color: Color.fromARGB(241, 31, 128, 193)),
        textTheme:const  TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(224, 101, 126, 227)
          ), 
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(224, 16, 19, 76)
          ),
        ),
      ),
    );
  }
}