import 'package:flutter/material.dart';
import 'package:task_project/core/app_colors.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor ,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.primaryColor ,
        fontSize: 20 ,
        fontWeight: FontWeight.bold
      )
    )
  );
}