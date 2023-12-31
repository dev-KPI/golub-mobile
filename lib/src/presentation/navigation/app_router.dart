import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/src/presentation/features/chats/screens/chats_screen.dart';
import 'package:golub/src/presentation/features/contacts/screens/contacts_screen.dart';
import 'package:golub/src/presentation/features/profile/screens/profile_screen.dart';
import 'package:golub/src/presentation/features/splash/screens/splash_screen.dart';
import 'package:golub/src/presentation/navigation/app_navigation_shell.dart';
import 'package:golub/src/presentation/navigation/app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final routerConfig = GoRouter(
  initialLocation: AppRoutes.getPath(AppRoutes.splash),
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  redirect: (context, state) {
    return null;
  },
  routes: [
    GoRoute(
      name: AppRoutes.splash,
      path: AppRoutes.getPath(AppRoutes.splash),
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
        StatefulNavigationShell navigationShell) {
        return AppNavigationShell(navigationShell: navigationShell);
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutes.getPath(AppRoutes.contacts),
              name: AppRoutes.contacts,
              builder: (BuildContext context, GoRouterState state) {
                return const ContactsScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutes.getPath(AppRoutes.chats),
              name: AppRoutes.chats,
              builder: (BuildContext context, GoRouterState state) {
                return const ChatsScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRoutes.profile,
              path: AppRoutes.getPath(AppRoutes.profile),
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Placeholder(),
);
