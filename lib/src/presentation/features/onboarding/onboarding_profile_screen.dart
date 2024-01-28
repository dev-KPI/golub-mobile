import 'package:flutter/material.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/profile_upload_image.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/gtext_field.dart';

class OnboardingProfileScreen extends StatelessWidget {
  const OnboardingProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '', //s.onboardingProfileScreenTitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: AppColors.baseBlack,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
          ),
          width: double.infinity,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ProfileUploadImage(),
              SizedBox(height: 32.0),
              GTextField(
                hintText: 'Profile Name',
                fillColor: AppColors.baseGray2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
