import 'package:asl_flashcards/configs/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  //define how app looks here

  primaryColor: kBlue,
  textTheme: TextTheme(
    bodyMedium:TextStyle(
      color: Colors.white,
      fontSize: 18, //google fonts to choose fonts
      fontFamily: GoogleFonts.poppins().fontFamily
    )
  ),
appBarTheme: AppBarTheme(
  titleTextStyle: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 20.5,
      fontWeight: FontWeight.bold,

  ),
      color: kBlue,
),
    scaffoldBackgroundColor: klightBlue,




);