import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:golub/src/presentation/navigation/app_router.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_assets.dart';
import 'package:golub/src/presentation/ui_kit/theme/app_styles.dart';

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
      context.goNamed(AppRoutes.auth);
    });
  }

  Future<void> _initialization() async =>
    Future.delayed(const Duration(seconds: 2));

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: AppStyles.mixBlueGrayRadialGradient,
      ),
      child: SvgPicture.asset(
        AppAssets.splashLogo,
        fit: BoxFit.cover,
      ),
    );
  }
}
