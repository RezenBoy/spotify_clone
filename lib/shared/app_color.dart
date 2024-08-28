import 'package:flutter/material.dart';

enum AppColors {
  primary,
  secondary,
  background,
  text,
  accent,
}

Color getColor(AppColors color) {
  switch (color) {
    case AppColors.primary:
      return Colors.blue;
    case AppColors.secondary:
      return Colors.green;
    case AppColors.background:
      return Colors.white;
    case AppColors.text:
      return Colors.black87;
    case AppColors.accent:
      return Colors.orange;
    default:
      return Colors.grey;
  }
}
