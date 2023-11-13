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
);
