import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/presentation/features/auth/widgets/verification/verification_input.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _verificationDigitFirst = TextEditingController();
  final TextEditingController _verificationDigitSecond = TextEditingController();
  final TextEditingController _verificationDigitThird = TextEditingController();
  final TextEditingController _verificationDigitFourth = TextEditingController();
  final TextEditingController _verificationDigitFifth = TextEditingController();

  final FocusNode _fnFirst = FocusNode();
  final FocusNode _fnSecond = FocusNode();
  final FocusNode _fnThird = FocusNode();
  final FocusNode _fnFourth = FocusNode();
  final FocusNode _fnFifth = FocusNode();

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: AppStyles.blueWhiteGradient,
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 20.0,
            ),
            child: Column(children: [
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
                t.screens.verification.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12.0),
              Text(
                t.screens.verification.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Container(
                padding: const EdgeInsets.only(top: 40.0, bottom: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: VerificationInput(
                        textInputAction: TextInputAction.next,
                        controller: _verificationDigitFirst,
                        focusNode: _fnFirst,
                        nextFocusNode: _fnSecond,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: VerificationInput(
                        textInputAction: TextInputAction.next,
                        controller: _verificationDigitSecond,
                        focusNode: _fnSecond,
                        nextFocusNode: _fnThird,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: VerificationInput(
                        textInputAction: TextInputAction.next,
                        controller: _verificationDigitThird,
                        focusNode: _fnThird,
                        nextFocusNode: _fnFourth,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: VerificationInput(
                        textInputAction: TextInputAction.next,
                        controller: _verificationDigitFourth,
                        focusNode: _fnFourth,
                        nextFocusNode: _fnFifth,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      flex: 1,
                      child: VerificationInput(
                        controller: _verificationDigitFifth,
                        focusNode: _fnFifth,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    t.screens.verification.noCodeQuestion,
                  ),
                  const SizedBox(width: 4.0),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      print('resend code');
                    },
                    child: Text(
                      t.screens.verification.noCodeButtonLabel,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.brightOrange,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36.0),
              GButton(
                  buttonLabel: t.common.buttons.next,
                  onPressed: () {
                    context.pushNamed(AppRoutes.onboardingProfile);
                  }),
            ]),
          ),
        ),
      ),
    );
  }
}
