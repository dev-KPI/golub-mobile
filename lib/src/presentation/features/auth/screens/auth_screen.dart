import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/core/di/injectable.dart';
import 'package:golub/src/domain/blocs/auth/auth_bloc.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';
import 'package:golub/src/presentation/ui_kit/widgets/input/gtext_field.dart';
import 'package:golub/src/presentation/utils/link_contants.dart';
import 'package:golub/src/presentation/utils/link_launcher.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthBloc _authBloc = getIt<AuthBloc>();

  final TextEditingController _emailController = TextEditingController(
    text: 'test@gmail.com',
  );
  final FocusNode _emailFocusNode = FocusNode();

  final TapGestureRecognizer _termsConditionsTapRecognizer = TapGestureRecognizer();
  final TapGestureRecognizer _privacyPolicyTapRecognizer = TapGestureRecognizer();

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_handleEmailString);
    _authBloc.add(ChangeEmailEvent(_emailController.text));
    _authBloc.add(ChangePrivacyPolicyStatusEvent(true));
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
              padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: size.height / 6,
                      ),
                      child: Text(
                        t.screens.auth.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    Text(
                      t.screens.auth.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16.0),
                    BlocBuilder(
                        bloc: _authBloc,
                        builder: (BuildContext context, AuthState state) {
                          return GTextField(
                            textEditingController: _emailController,
                            focusNode: _emailFocusNode,
                            hintText: t.common.placeholders.email,
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
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                                    ChangePrivacyPolicyStatusEvent(value ?? false),
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
                                text: t.screens.auth.statementIAgree,
                                style: Theme.of(context).textTheme.bodySmall,
                                children: <TextSpan>[
                                  TextSpan(
                                    recognizer: _termsConditionsTapRecognizer
                                      ..onTap = () => launchLink(LinkConstants.termAndCondition),
                                    text: t.screens.auth.statementTermsAndConditions,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: AppColors.brightBlue),
                                  ),
                                  TextSpan(
                                    text: t.screens.auth.statementAnd,
                                  ),
                                  TextSpan(
                                    recognizer: _privacyPolicyTapRecognizer
                                      ..onTap = () => launchLink(LinkConstants.privacy),
                                    text: t.screens.auth.statementPrivacyPolicy,
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
                    BlocConsumer(
                      bloc: _authBloc,
                      listener: (BuildContext context, AuthState state) {
                        if (state.status == AuthStatus.success) {
                          context.pushNamed(AppRoutes.verification);
                        }
                      },
                      builder: (BuildContext context, AuthState state) {
                        return GButton(
                          isDisabled: _authBloc.isButtonDisabled,
                          isLoading: state.status == AuthStatus.loading,
                          onPressed: () => _authBloc.add(AuthenticateByEmailEvent()),
                          buttonLabel: t.common.buttons.next,
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
