import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/src/presentation/navigation/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initialization().then((_) {
      context.goNamed(AppRoutes.chats);
    });
  }

  Future<void> _initialization() async {
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'SplashScreen',
        ),
      ),
    );
  }
}
