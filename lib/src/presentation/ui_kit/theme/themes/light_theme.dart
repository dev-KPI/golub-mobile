import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  textTheme: TextTheme(
    titleLarge: AppTextStyles.titleLarge.copyWith(
      color: AppColors.baseBlack,
    ),
    titleMedium: AppTextStyles.titleMedium,
    titleSmall: AppTextStyles.titleSmall,
    displayLarge: AppTextStyles.displayLarge,
    displayMedium: AppTextStyles.displayMedium,
    displaySmall: AppTextStyles.displaySmall,
    bodyMedium: AppTextStyles.bodyMedium.copyWith(
      color: AppColors.baseGray6,
    ),
    bodySmall: AppTextStyles.bodySmall.copyWith(
      color: AppColors.baseBlack,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: AppTextStyles.bodyMedium.copyWith(
      color: AppColors.baseGray5,
    ),
    floatingLabelStyle: AppTextStyles.bodyMedium.copyWith(
      color: AppColors.baseGray5,
    ),
    floatingLabelAlignment: FloatingLabelAlignment.start,
    helperStyle: AppTextStyles.displaySmall.copyWith(
      color: AppColors.brightRed,
    ),
    fillColor: AppColors.baseWhite,
    filled: true,
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.baseWhite),
      borderRadius: BorderRadius.circular(16.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.baseWhite),
      borderRadius: BorderRadius.circular(16.0),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.baseWhite),
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: AppColors.baseWhite,
  ),
);
