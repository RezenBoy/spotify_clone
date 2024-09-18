import 'package:flutter/material.dart';

enum AppTextStyle {
  heading1,
  heading2,
  primaryText,
  subPrimaryText,
  bodyText,
  subheading1,
}

TextStyle getTextStyle(
  AppTextStyle style, {
  Color? color,
  FontWeight? fontWeight,
}) {
  switch (style) {
    case AppTextStyle.heading1:
      return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w900,
        fontSize: 35,
      );
    case AppTextStyle.heading2:
      return TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
    case AppTextStyle.primaryText:
      return TextStyle(
          color: color ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.w900,
          fontSize: 14);
    case AppTextStyle.subPrimaryText:
      return TextStyle(
          color: color ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.w900,
          fontSize: 12);
    case AppTextStyle.bodyText:
      return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black87,
      );
    case AppTextStyle.subheading1:
      return TextStyle(color: color??Colors.white, fontSize: 12);
    default:
      return TextStyle(
        fontSize: 14,
        color: Colors.black,
      );
  }
}
