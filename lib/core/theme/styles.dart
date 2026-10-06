import 'package:fit_flow/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextStyles {
  static TextStyle font48Bold = GoogleFonts.lexend(
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1,
    letterSpacing: -1.2,
    color: AppColors.onPrimary,
  );

  static TextStyle font14Light = GoogleFonts.lexend(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 20 / 14,
    letterSpacing: 2.8,
    color: AppColors.onPrimaryMuted,
  );
}
