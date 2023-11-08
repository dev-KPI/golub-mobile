/// App routes
class AppRoutes {
  static const String splash = 'splash';
  static const String contacts = 'contacts';
  static const String chats = 'chats';
  static const String profile = 'profile';

  static String getPath(String routeName) => '/$routeName';
}
