import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_sizes.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';

class GButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final VoidCallback onPressed;
  final String buttonLabel;
  final bool isLoading;
  final bool isDisabled;

  const GButton({
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
    this.buttonLabel = '',
    this.isLoading = false,
    this.isDisabled = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: width ?? double.infinity,
        minHeight: height ?? AppSizes.elevatedButtonHeight,
      ),
      decoration: BoxDecoration(
        gradient: !isDisabled ? AppStyles.bluePurpleGradient : null,
        color: isDisabled ? AppColors.baseGray3 : null,
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppSizes.elevatedButtonBorderRadius
        ),
      ),
      child: ElevatedButton(
        onPressed: !isDisabled ? onPressed : null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius ?? AppSizes.elevatedButtonBorderRadius
              ),
            ),
          ),
        ),
        child: isLoading ? Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).progressIndicatorTheme.color,
            strokeWidth: 2.0,
          ),
        ) :
        Text(
          buttonLabel,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: isDisabled ? AppColors.baseGray4 : AppColors.baseWhite,
          ),
        ),
      ),
    );
  }
}
