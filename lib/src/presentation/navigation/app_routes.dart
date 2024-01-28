part of 'app_router.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const String auth = 'auth';
  static const String contacts = 'contacts';
  static const String chats = 'chats';
  static const String profile = 'profile';
  static const String verification = 'verification';
  static const String onboardingProfile = 'onboardingProfile';

  static String getPath(String routeName) => '/$routeName';
}
