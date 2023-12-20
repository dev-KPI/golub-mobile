import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:golub/src/app.dart';
import 'package:golub/src/core/di/injectable.dart';
import 'package:golub/src/data/services/dio/dio_client.dart';
import 'package:golub/src/presentation/ui_kit/ui.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _precacheLogoImage();
  configureDependencies();
  runApp(const App());
}

Future<void> _precacheLogoImage() async {
  const loader = SvgAssetLoader(AppAssets.splashLogo);
  svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
}