/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 32 (16 per locale)
///
/// Built on 2024-02-03 at 15:42 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	uk(languageCode: 'uk', build: _StringsUk.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsCommonEn common = _StringsCommonEn._(_root);
	late final _StringsErrorsEn errors = _StringsErrorsEn._(_root);
	late final _StringsScreensEn screens = _StringsScreensEn._(_root);
}

// Path: common
class _StringsCommonEn {
	_StringsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsCommonButtonsEn buttons = _StringsCommonButtonsEn._(_root);
	late final _StringsCommonPlaceholdersEn placeholders = _StringsCommonPlaceholdersEn._(_root);
	late final _StringsCommonInputsEn inputs = _StringsCommonInputsEn._(_root);
}

// Path: errors
class _StringsErrorsEn {
	_StringsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsErrorsValidationEn validation = _StringsErrorsValidationEn._(_root);
}

// Path: screens
class _StringsScreensEn {
	_StringsScreensEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsScreensAuthEn auth = _StringsScreensAuthEn._(_root);
	late final _StringsScreensVerificationEn verification = _StringsScreensVerificationEn._(_root);
	late final _StringsScreensOnboardingProfileEn onboardingProfile = _StringsScreensOnboardingProfileEn._(_root);
}

// Path: common.buttons
class _StringsCommonButtonsEn {
	_StringsCommonButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get next => 'Next';
	String get done => 'Done';
}

// Path: common.placeholders
class _StringsCommonPlaceholdersEn {
	_StringsCommonPlaceholdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
}

// Path: common.inputs
class _StringsCommonInputsEn {
	_StringsCommonInputsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profileHint => 'Profile Name';
}

// Path: errors.validation
class _StringsErrorsValidationEn {
	_StringsErrorsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalidEmail => 'Please enter a valid email';
}

// Path: screens.auth
class _StringsScreensAuthEn {
	_StringsScreensAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Authentication';
	String get description => 'Please enter your credentials to login.';
	String get statementIAgree => 'I agree to ';
	String get statementPrivacyPolicy => 'Privacy Policy';
	String get statementTermsAndConditions => 'Terms & Conditions';
	String get statementAnd => ' and ';
}

// Path: screens.verification
class _StringsScreensVerificationEn {
	_StringsScreensVerificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Check your Email';
	String get description => 'Paste dynamically generated code';
	String get noCodeQuestion => 'Didn\'t get anything?';
	String get noCodeButtonLabel => 'Resend code';
}

// Path: screens.onboardingProfile
class _StringsScreensOnboardingProfileEn {
	_StringsScreensOnboardingProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profile';
}

// Path: <root>
class _StringsUk implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUk.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsUk _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsCommonUk common = _StringsCommonUk._(_root);
	@override late final _StringsErrorsUk errors = _StringsErrorsUk._(_root);
	@override late final _StringsScreensUk screens = _StringsScreensUk._(_root);
}

// Path: common
class _StringsCommonUk implements _StringsCommonEn {
	_StringsCommonUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override late final _StringsCommonButtonsUk buttons = _StringsCommonButtonsUk._(_root);
	@override late final _StringsCommonPlaceholdersUk placeholders = _StringsCommonPlaceholdersUk._(_root);
	@override late final _StringsCommonInputsUk inputs = _StringsCommonInputsUk._(_root);
}

// Path: errors
class _StringsErrorsUk implements _StringsErrorsEn {
	_StringsErrorsUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override late final _StringsErrorsValidationUk validation = _StringsErrorsValidationUk._(_root);
}

// Path: screens
class _StringsScreensUk implements _StringsScreensEn {
	_StringsScreensUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override late final _StringsScreensAuthUk auth = _StringsScreensAuthUk._(_root);
	@override late final _StringsScreensVerificationUk verification = _StringsScreensVerificationUk._(_root);
	@override late final _StringsScreensOnboardingProfileUk onboardingProfile = _StringsScreensOnboardingProfileUk._(_root);
}

// Path: common.buttons
class _StringsCommonButtonsUk implements _StringsCommonButtonsEn {
	_StringsCommonButtonsUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get next => 'Далі';
	@override String get done => 'Done';
}

// Path: common.placeholders
class _StringsCommonPlaceholdersUk implements _StringsCommonPlaceholdersEn {
	_StringsCommonPlaceholdersUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get email => 'Емейл';
}

// Path: common.inputs
class _StringsCommonInputsUk implements _StringsCommonInputsEn {
	_StringsCommonInputsUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get profileHint => 'Profile Name';
}

// Path: errors.validation
class _StringsErrorsValidationUk implements _StringsErrorsValidationEn {
	_StringsErrorsValidationUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get invalidEmail => 'Введіть коректний email';
}

// Path: screens.auth
class _StringsScreensAuthUk implements _StringsScreensAuthEn {
	_StringsScreensAuthUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Авторизація';
	@override String get description => 'Введіть email для авторизації';
	@override String get statementIAgree => 'Я погоджуюсь з ';
	@override String get statementPrivacyPolicy => 'Політикою конфіденційності';
	@override String get statementTermsAndConditions => 'Умовами використання';
	@override String get statementAnd => ' та ';
}

// Path: screens.verification
class _StringsScreensVerificationUk implements _StringsScreensVerificationEn {
	_StringsScreensVerificationUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Перевірте електронну пошту';
	@override String get description => 'Ми надіслали вам код підтвердження на електронну пошту';
	@override String get noCodeQuestion => 'Не отримали код?';
	@override String get noCodeButtonLabel => 'Відправити ще раз';
}

// Path: screens.onboardingProfile
class _StringsScreensOnboardingProfileUk implements _StringsScreensOnboardingProfileEn {
	_StringsScreensOnboardingProfileUk._(this._root);

	@override final _StringsUk _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профіль';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.buttons.next': return 'Next';
			case 'common.buttons.done': return 'Done';
			case 'common.placeholders.email': return 'Email';
			case 'common.inputs.profileHint': return 'Profile Name';
			case 'errors.validation.invalidEmail': return 'Please enter a valid email';
			case 'screens.auth.title': return 'Authentication';
			case 'screens.auth.description': return 'Please enter your credentials to login.';
			case 'screens.auth.statementIAgree': return 'I agree to ';
			case 'screens.auth.statementPrivacyPolicy': return 'Privacy Policy';
			case 'screens.auth.statementTermsAndConditions': return 'Terms & Conditions';
			case 'screens.auth.statementAnd': return ' and ';
			case 'screens.verification.title': return 'Check your Email';
			case 'screens.verification.description': return 'Paste dynamically generated code';
			case 'screens.verification.noCodeQuestion': return 'Didn\'t get anything?';
			case 'screens.verification.noCodeButtonLabel': return 'Resend code';
			case 'screens.onboardingProfile.title': return 'Profile';
			default: return null;
		}
	}
}

extension on _StringsUk {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.buttons.next': return 'Далі';
			case 'common.buttons.done': return 'Done';
			case 'common.placeholders.email': return 'Емейл';
			case 'common.inputs.profileHint': return 'Profile Name';
			case 'errors.validation.invalidEmail': return 'Введіть коректний email';
			case 'screens.auth.title': return 'Авторизація';
			case 'screens.auth.description': return 'Введіть email для авторизації';
			case 'screens.auth.statementIAgree': return 'Я погоджуюсь з ';
			case 'screens.auth.statementPrivacyPolicy': return 'Політикою конфіденційності';
			case 'screens.auth.statementTermsAndConditions': return 'Умовами використання';
			case 'screens.auth.statementAnd': return ' та ';
			case 'screens.verification.title': return 'Перевірте електронну пошту';
			case 'screens.verification.description': return 'Ми надіслали вам код підтвердження на електронну пошту';
			case 'screens.verification.noCodeQuestion': return 'Не отримали код?';
			case 'screens.verification.noCodeButtonLabel': return 'Відправити ще раз';
			case 'screens.onboardingProfile.title': return 'Профіль';
			default: return null;
		}
	}
}
