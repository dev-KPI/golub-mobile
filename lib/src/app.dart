import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:golub/src/presentation/ui_kit/theme/themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // themeMode: themeState.currentThemeMode,
      // theme: themeState.currentTheme,
      // darkTheme: themeState.currentThemeDark,
      theme: lightTheme,
      locale: TranslationProvider.of(context).flutterLocale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      routerConfig: routerConfig,
    );
  }
}
