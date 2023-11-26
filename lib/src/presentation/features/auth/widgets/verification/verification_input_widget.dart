import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';

class VerificationInputWidget extends StatelessWidget {

  const VerificationInputWidget({
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
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
        decoration: InputDecoration(
          fillColor: Colors.transparent,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 24.0, horizontal: 12.0),
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
      ),
    );
  }
}
