import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';

final darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    titleLarge: AppTextStyles.titleLarge.copyWith(color: AppColors.baseWhite),
    titleMedium: AppTextStyles.titleMedium.copyWith(color: AppColors.baseWhite),
    titleSmall: AppTextStyles.titleSmall.copyWith(color: AppColors.baseWhite),
    displayLarge: AppTextStyles.displayLarge.copyWith(color: AppColors.baseWhite),
    displayMedium: AppTextStyles.displayMedium.copyWith(color: AppColors.baseWhite),
    displaySmall: AppTextStyles.displaySmall.copyWith(color: AppColors.baseWhite),
    bodyMedium: AppTextStyles.bodyMedium.copyWith(color: AppColors.baseWhite),
    bodySmall: AppTextStyles.bodySmall.copyWith(color: AppColors.baseWhite),
  ),
);