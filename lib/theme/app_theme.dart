import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 254, 188, 47);
  static const Color secundary = Color.fromARGB(255, 19, 106, 247);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: primary,

      //appbar theme
      appBarTheme: const AppBarTheme(
        color: primary, 
        elevation: 1),

      //text button theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary
      ),

      //elevated button 
      elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
             primary: Colors.redAccent,
             shape: const StadiumBorder(),
             elevation: 0
        )
      ),

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secundary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
        ),
      )
  );
    
  
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primary,

      //appbar theme
      appBarTheme: const AppBarTheme(
        color: primary, 
        elevation: 1),

      scaffoldBackgroundColor: Colors.black

      );

      
}
