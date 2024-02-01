import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class VerificationInput extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final VoidCallback? onEditingComplete;

  const VerificationInput({
    this.controller,
    this.focusNode,
    this.nextFocusNode,
    this.textInputAction = TextInputAction.done,
    this.onEditingComplete,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 56.0,
        minHeight: 76.0,
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textInputAction: textInputAction,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.brightBlue,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.baseGray3),
            borderRadius: BorderRadius.circular(16.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.baseWhite),
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        onEditingComplete: () {
          focusNode?.unfocus();
          nextFocusNode?.requestFocus();
          if (onEditingComplete != null) {
            onEditingComplete!();
          }
        },
      ),
    );
  }
}
