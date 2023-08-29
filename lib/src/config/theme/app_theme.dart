import 'package:clean_architecture_tutorial/src/res/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(elevation: 0, color: AppColors.black),
  );
}
