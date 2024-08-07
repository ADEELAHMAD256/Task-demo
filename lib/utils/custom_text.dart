import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextUrbanist extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const CustomTextUrbanist({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: GoogleFonts.urbanist(
        height: 0,
        decoration: TextDecoration.none,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 16.sp,
        // fontFamily: 'Montserrat-SemiBold.ttf',
        fontWeight: fontWeight ?? FontWeight.w400,
        // fontStyle: FontStyle.
      ),
    );
  }
}

class CustomTextMontserratSemiBold extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const CustomTextMontserratSemiBold({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16.sp,
        // fontFamily: 'Montserrat-SemiBold.ttf',
        fontWeight: fontWeight ?? FontWeight.w400,
        // fontStyle: FontStyle.
      ),
    );
  }
}
