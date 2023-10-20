import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app_ui/utils/app_colors.dart';

class AppTheme {
  AppTheme.init();
  static ThemeData theme = ThemeData(
    primaryColor: blackColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: blackColor,
      secondary: greenColor,
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 30.sp,
        color: blackColor,
      ),
    ),
  );
}
