import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/gtext_field.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/profile_upload_image.dart';

class OnboardingProfileScreen extends StatelessWidget {
  const OnboardingProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          t.screens.onboardingProfile.title,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const ProfileUploadImage(),
              const SizedBox(height: 32.0),
              GTextField(
                hintText: t.common.inputs.profileHint,
                fillColor: AppColors.baseGray2,
              ),
              const SizedBox(height: 48.0),
              GButton(
                buttonLabel: t.common.buttons.done,
                isDisabled: false,
                onPressed: () {
                  print('Done');
                  context.goNamed(AppRoutes.chats);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
