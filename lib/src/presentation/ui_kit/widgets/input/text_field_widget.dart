import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final String? error;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;
  final Color? fillColor;

  const TextFieldWidget({
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
    return Container(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: 64.0,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        color: fillColor ?? AppColors.baseWhite,
        //color: Colors.yellow,
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
          labelText: hintText,
          helperText: error,
          fillColor: fillColor,
        ),
      ),
    );
  }
}
