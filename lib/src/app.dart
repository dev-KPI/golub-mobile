import 'package:flutter/material.dart';
import 'package:golub/generated/l10n.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // themeMode: themeState.currentThemeMode,
      // theme: themeState.currentTheme,
      // darkTheme: themeState.currentThemeDark,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uk', 'UA'),
      ],
      routerConfig: routerConfig,
    );
  }
}
