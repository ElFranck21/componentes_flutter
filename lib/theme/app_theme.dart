import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // constante de color primario
  static const primaryColor=Color.fromARGB(218, 96, 184, 192);
  // constante de color secundario
  static const secundaryColor=Color.fromARGB(224, 16, 19, 76);
    // constatnte de color de fondo
  static const backColor=Color.fromARGB(241, 31, 128, 193);

//definicion del tema de color y estilo de la app
  static final ThemeData lightTheme= ThemeData.light().copyWith(
    scaffoldBackgroundColor:primaryColor,
        appBarTheme:const  AppBarTheme(color: backColor),
        textTheme:  TextTheme(
          // titulos de primer nivel h1
          headlineLarge: GoogleFonts.acme(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: backColor,
            decoration:TextDecoration.underline,
            decorationColor: secundaryColor,
            decorationStyle:TextDecorationStyle.double,
            decorationThickness: 1.2, 
          ), 

          // fuente para textos muy pequeños 
          bodySmall: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: secundaryColor,
          ),
        ),
  );
}