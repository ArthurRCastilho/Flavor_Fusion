import 'package:flavor_fusion/screens/auth_screen/auth_screen.dart';
import 'package:flavor_fusion/screens/categories_screen/categories_screen.dart';
import 'package:flavor_fusion/screens/splash_screen/splash_screen.dart';
import 'package:flavor_fusion/styles/theme_custom.dart';
import 'package:flavor_fusion/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor Fusion',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routes: {
        AppRoutes.SPLASH_SCREEN: (ctx) => const SplashScreen(),
        AppRoutes.AUTH: (ctx) => const AuthScreen(),
        AppRoutes.CATEGORIES: (ctx) => const CategoriesScreen(),
      },
    );
  }
}
