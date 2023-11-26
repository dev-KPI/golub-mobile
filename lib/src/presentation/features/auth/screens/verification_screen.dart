import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/generated/l10n.dart';
import 'package:golub/src/presentation/features/auth/widgets/verification/verification_input_widget.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_assets.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: AppStyles.blueWhiteGradient,
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => context.pop(),
                    child: SvgPicture.asset(
                      AppAssets.arrowBackIcon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 64.0,
                  height: 64.0,
                  child: SvgPicture.asset(
                    AppAssets.chatsIcon,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 32.0),
                Text(
                  s.verificationScreenTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 12.0),
                Text(
                  s.verificationScreenDescription,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 28.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: VerificationInputWidget(),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: VerificationInputWidget(),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: VerificationInputWidget(),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: VerificationInputWidget(),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        flex: 1,
                        child: VerificationInputWidget(),
                      )
                    ],
                  ),
                ),
                Text(
                  'Didn\'t get anything? Resend me code.'
                ),
                const SizedBox(height: 36.0),
                ElevatedButtonWidget(
                  buttonLabel: 'Next',
                  onPressed: () {}
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
