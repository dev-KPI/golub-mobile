import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:golub/generated/l10n.dart';
import 'package:golub/src/core/di/injectable.dart';
import 'package:golub/src/domain/blocs/auth/auth_bloc.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/text_field_widget.dart';
import 'package:golub/src/presentation/utils/link_launcher.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthBloc _authBloc = getIt<AuthBloc>();

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  final TapGestureRecognizer _termsConditionsTapRecognizer =
      TapGestureRecognizer();
  final TapGestureRecognizer _privacyPolicyTapRecognizer =
      TapGestureRecognizer();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_handleEmailString);
  }

  void _handleEmailString() {
    _authBloc.add(ChangeEmailEvent(_emailController.text));
  }

  @override
  void dispose() {
    _emailController.removeListener(_handleEmailString);
    _emailController.dispose();
    _termsConditionsTapRecognizer.dispose();
    _privacyPolicyTapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (_) => _authBloc,
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            gradient: AppStyles.blueWhiteGradient,
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 6,
                      ),
                      child: Text(
                        s.authScreenTitle,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      s.authScreenDescription,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16.0),
                    BlocBuilder(
                        bloc: _authBloc,
                        builder: (BuildContext context, AuthState state) {
                          return TextFieldWidget(
                            textEditingController: _emailController,
                            focusNode: _emailFocusNode,
                            hintText: s.authScreenEmailPlaceholder,
                            error: state.validationError,
                          );
                        }),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 60.0,
                        bottom: 32.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: BlocBuilder(
                              bloc: _authBloc,
                              builder: (BuildContext context, AuthState state) {
                                return Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0)),
                                  side: const BorderSide(
                                    color: Colors.black,
                                    width: 1.0,
                                  ),
                                  checkColor: Colors.white,
                                  activeColor: AppColors.brightLightPurple,
                                  value: state.privacyPolicyAccepted,
                                  onChanged: (bool? value) => _authBloc.add(
                                    ChangePrivacyPolicyStatusEvent(
                                        value ?? false),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 12.0),
                          Expanded(
                            child: RichText(
                              maxLines: 2,
                              text: TextSpan(
                                text: s.iAgreeLabel,
                                style: Theme.of(context).textTheme.bodySmall,
                                children: <TextSpan>[
                                  TextSpan(
                                    recognizer: _termsConditionsTapRecognizer
                                      ..onTap = () =>
                                          launchLink('https://google.com'),
                                    text: s.termsAndConditionsLabel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: AppColors.brightBlue),
                                  ),
                                  TextSpan(text: s.andLabel),
                                  TextSpan(
                                    recognizer: _privacyPolicyTapRecognizer
                                      ..onTap = () =>
                                          launchLink('https://google.com'),
                                    text: s.privacyPolicyLabel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: AppColors.brightBlue),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    BlocBuilder(
                      bloc: _authBloc,
                      builder: (BuildContext context, AuthState state) {
                        return ElevatedButtonWidget(
                          isDisabled: _authBloc.isButtonDisabled,
                          onPressed: () =>
                            _authBloc.add(AuthenticateByEmailEvent()),
                          buttonLabel: s.authScreenButtonLabel,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
