import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class AppTextStyles {
  static const TextStyle _ubuntu = TextStyle(
    fontFamily: 'Ubuntu',
  );
  static const TextStyle _roboto = TextStyle(
    fontFamily: 'Roboto',
  );
  static final TextStyle displayLarge = _ubuntu.copyWith(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleSmall = _ubuntu.copyWith(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleMedium = _ubuntu.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleLarge = _ubuntu.copyWith(
    fontSize: 28.0,
    fontWeight: FontWeight.w500,
    height: 1.25,
  );
  static final TextStyle displaySmall = _ubuntu.copyWith(
    fontSize: 11.0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle displayMedium = _roboto.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    height: 1.25,
  );
  static final TextStyle bodyMedium = _roboto.copyWith(
    fontSize: 17.0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle bodySmall = _roboto.copyWith(
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
    height: 1.33,
  );
}

class AppStyles {
  static const RadialGradient mixBlueGrayRadialGradient = RadialGradient(
    colors: [
      AppColors.mixBlueGray,
      AppColors.mixBlueGray1,
    ],
    radius: 1.5,
  );

  static const LinearGradient bluePurpleGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.gradientIndigo,
      AppColors.gradientBlue,
    ],
  );

  static const LinearGradient blueWhiteGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.gradientWhite,
      AppColors.baseWhite,
    ],
  );
}
