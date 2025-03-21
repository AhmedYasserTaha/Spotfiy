import 'package:flutter/material.dart';
import 'package:shopy_app/core/configs/themes/app_theme.dart';
import 'package:shopy_app/presentation/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashView(),
    );
  }
}
