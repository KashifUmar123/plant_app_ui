import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

extension Fonts on BuildContext {
  TextStyle get text10500 => GoogleFonts.poppins(fontSize: 10.sp, fontWeight: FontWeight.w500);
  TextStyle get text30400 => Theme.of(this).textTheme.displayLarge!;
}
