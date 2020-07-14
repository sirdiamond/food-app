import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight = ThemeData.from(
  colorScheme: ColorScheme(
    primary: Colors.white,
    primaryVariant: Colors.white,
    secondary: Colors.pinkAccent,
    secondaryVariant: Colors.pinkAccent[700],
    surface: Colors.pink[50],
    background: Colors.white,
    error: Colors.red,
    onPrimary: Colors.red,
    onSecondary: Colors.brown[900],
    onSurface: Colors.brown[900],
    onBackground: Colors.brown[900],
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.poppins(
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.brown[900],
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.brown[900],
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 47,
      fontWeight: FontWeight.w400,
      color: Colors.brown[900],
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.brown[900],
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400,
      color: Colors.brown[900],
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.brown[900],
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.brown[900],
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.brown[900],
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.brown[900],
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.brown[900],
    ),
    button: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.brown[900],
    ),
    caption: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.brown[900],
    ),
    overline: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.brown[900],
    ),
  ),
);
