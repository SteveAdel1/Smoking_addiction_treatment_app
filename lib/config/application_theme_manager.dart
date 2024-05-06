import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationThemeManager {
  //lightTheme
  static const Color lightPrimaryColor = Color(0xFF23374D);
  static const Color darkPrimaryColor = Color(0xFFFFFFFF);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFEEEEEE),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: lightPrimaryColor),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 25,
            color: lightPrimaryColor,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF0E3854),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF85C3FF),

          selectedLabelStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Color(0xFF85C3FF),
          ),
          selectedIconTheme: IconThemeData(
            color: Color(0xFF85C3FF),
          ),
          unselectedItemColor: Color(0xFFEEEEEE),
          unselectedLabelStyle: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFEEEEEE),
          )
      ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: lightPrimaryColor),
      bodyLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: lightPrimaryColor),
      bodyMedium: TextStyle(
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: lightPrimaryColor),
      bodySmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: lightPrimaryColor),
      displayLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: lightPrimaryColor),
    ),
  );

  //darkTheme
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFF23374D),
      appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: darkPrimaryColor),
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: darkPrimaryColor,
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF0E3854),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF85C3FF),
          selectedLabelStyle: TextStyle(
            fontFamily: "Poppins",
            fontSize: 17,
            fontWeight: FontWeight.normal,
            color: Color(0xFF85C3FF),
          ),
          selectedIconTheme: IconThemeData(
            color: Color(0xFF85C3FF),
          ),
          unselectedItemColor: Color(0xFFEEEEEE),
          unselectedLabelStyle: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFEEEEEE),
          )
      ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: darkPrimaryColor),
      bodyLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: darkPrimaryColor),
      bodyMedium: TextStyle(
          fontFamily: "Poppins",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: darkPrimaryColor),
      bodySmall: TextStyle(
          fontFamily: "Poppins",
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: darkPrimaryColor),
      displayLarge: TextStyle(
          fontFamily: "Poppins",
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: darkPrimaryColor),
    ),
  );
}
