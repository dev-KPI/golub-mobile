import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;

  const TextFieldWidget({this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        maxHeight: 52.0,
      ),
      child: TextField(
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).brightness == Brightness.light ?
            AppColors.baseBlack : AppColors.baseWhite,
          ),
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
