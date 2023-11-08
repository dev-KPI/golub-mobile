import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle _ubuntu = TextStyle(
    fontFamily: 'Ubuntu',
  );
  static const TextStyle _roboto = TextStyle(
    fontFamily: 'Roboto',
  );
  static final TextStyle displayLarge = _ubuntu.copyWith(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleSmall = _ubuntu.copyWith(
    fontSize: 17.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleMedium = _ubuntu.copyWith(
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle titleLarge = _ubuntu.copyWith(
    fontSize: 28.0,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle displaySmall = _ubuntu.copyWith(
    fontSize: 11.0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle displayMedium = _roboto.copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle bodyMedium = _roboto.copyWith(
    fontSize: 17.0,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle bodySmall = _roboto.copyWith(
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );
}
