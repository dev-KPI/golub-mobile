// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Contacts`
  String get labelContacts {
    return Intl.message(
      'Contacts',
      name: 'labelContacts',
      desc: '',
      args: [],
    );
  }

  /// `Authentication`
  String get authScreenTitle {
    return Intl.message(
      'Authentication',
      name: 'authScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and get dynamically generated code`
  String get authScreenDescription {
    return Intl.message(
      'Enter your email and get dynamically generated code',
      name: 'authScreenDescription',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get authScreenButtonLabel {
    return Intl.message(
      'Next',
      name: 'authScreenButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get authScreenEmailPlaceholder {
    return Intl.message(
      'Email',
      name: 'authScreenEmailPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get authScreenValidationEmailError {
    return Intl.message(
      'Please enter a valid email',
      name: 'authScreenValidationEmailError',
      desc: '',
      args: [],
    );
  }

  /// `I agree to `
  String get iAgreeLabel {
    return Intl.message(
      'I agree to ',
      name: 'iAgreeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicyLabel {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get termsAndConditionsLabel {
    return Intl.message(
      'Terms & Conditions',
      name: 'termsAndConditionsLabel',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get andLabel {
    return Intl.message(
      ' and ',
      name: 'andLabel',
      desc: '',
      args: [],
    );
  }

  /// `Check your Email`
  String get verificationScreenTitle {
    return Intl.message(
      'Check your Email',
      name: 'verificationScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Paste dynamically generated code`
  String get verificationScreenDescription {
    return Intl.message(
      'Paste dynamically generated code',
      name: 'verificationScreenDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
