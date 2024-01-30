import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class GTextField extends StatelessWidget {
  final String hintText;
  final String? error;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;
  final Color? fillColor;

  const GTextField({
    this.textEditingController,
    this.focusNode,
    this.onEditingComplete,
    this.hintText = '',
    this.error,
    this.fillColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: 68.0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            color: fillColor ?? AppColors.baseWhite,
          ),
          alignment: Alignment.center,
          child: TextField(
            controller: textEditingController,
            focusNode: focusNode,
            onEditingComplete: onEditingComplete,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.light ?
                AppColors.baseBlack : AppColors.baseWhite,
              ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              labelText: hintText,
              fillColor: fillColor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fillColor ?? AppColors.baseWhite),
                borderRadius: BorderRadius.circular(16.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fillColor ?? AppColors.baseWhite),
                borderRadius: BorderRadius.circular(16.0),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fillColor ?? AppColors.baseWhite),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            left: 12.0,
          ),
          child: Text(
            error ?? '',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: error == null ? Colors.transparent : AppColors.brightRed,
            ),
          ),
        ),
      ],
    );
  }
}
