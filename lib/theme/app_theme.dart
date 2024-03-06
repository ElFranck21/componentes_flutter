import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  // constante de color primario
  static const primaryColor=Color.fromARGB(218, 96, 184, 192);
  // constante de color secundario
  static const secundaryColor=Color.fromARGB(224, 16, 19, 76);
    // constatnte de color de fondo
  static const backColor=Color.fromARGB(241, 31, 128, 193);
  // constante de color de botones y widgets desabilitados
  static const disableWidgetColor= Color.fromARGB(227, 132, 128, 238);

//definicion del tema de color y estilo de la app
  static final ThemeData lightTheme= ThemeData.light().copyWith(
    scaffoldBackgroundColor:primaryColor,
        appBarTheme:  AppBarTheme(
          color: backColor, 
          titleTextStyle: GoogleFonts.lato(
          color: secundaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
        )),
        iconTheme: const IconThemeData(
          color: primaryColor,
          size: 30,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(secundaryColor),
            foregroundColor: MaterialStateProperty.all(disableWidgetColor),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.pacifico(color: backColor, fontSize: 21)
            )
          )
        ),

        //estilo de textos
        textTheme:  TextTheme(
          // titulos de primer nivel h1
          headlineLarge: GoogleFonts.acme(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: secundaryColor,
            decoration:TextDecoration.underline,
            decorationColor: secundaryColor,
            decorationStyle:TextDecorationStyle.double,
            decorationThickness: 1.2, 
          ), 

          headlineMedium: GoogleFonts.alexandria(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color:secundaryColor,
            
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