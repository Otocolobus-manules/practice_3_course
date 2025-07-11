import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:practice_3_course/src/theme/app_colors.dart';


final ThemeData theme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  cardTheme: const CardThemeData(
    elevation: 0,
    color: AppColors.white,
    margin: EdgeInsets.zero,
  ),

  textTheme: TextTheme(
    headlineLarge: GoogleFonts.lato(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      height: 1.2,
      letterSpacing: 0,
    ),

    headlineSmall: GoogleFonts.lato(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      height: 1.2,
      letterSpacing: 0,
    ),

    titleLarge: GoogleFonts.lato(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      height: 1.2,
      letterSpacing: 0.4,
    ),

    titleMedium: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.5,
      letterSpacing: 0.15,
    ),

    titleSmall: GoogleFonts.lato(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.43,
      letterSpacing: 0.25,
    ),
    
    labelMedium: GoogleFonts.lato(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 1.33,
      letterSpacing: 0.4,
    ),
  ),
);
