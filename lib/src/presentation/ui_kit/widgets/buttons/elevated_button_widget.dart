import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_sizes.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final VoidCallback onPressed;
  final String buttonLabel;

  const ElevatedButtonWidget({
    required this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
    this.buttonLabel = '',
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
        gradient: AppStyles.bluePurpleGradient,
        borderRadius: BorderRadius.circular(
          borderRadius ?? AppSizes.elevatedButtonBorderRadius
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
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
        child: Text(
          buttonLabel,
        ),
      ),
    );
  }
}
