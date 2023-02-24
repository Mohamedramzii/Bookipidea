import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class fontStyles {
  static TextStyle textStyle18 =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);

  static TextStyle textStyle20aleo = GoogleFonts.aleo(
      textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal));
  static TextStyle textStyle20 =
      GoogleFonts.montserrat(
        textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900)
      );

  static TextStyle textStyle14 = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.normal, color: KtextStyle14Color);

  static TextStyle textStyle16 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle textStyle30aleo = GoogleFonts.aleo(
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500));
}
