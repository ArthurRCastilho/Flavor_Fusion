import 'package:flavor_fusion/screens/auth_screen/auth_screen.dart';
import 'package:flavor_fusion/screens/categories_screen/categories_screen.dart';
import 'package:flavor_fusion/screens/splash_screen/splash_screen.dart';
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
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6F61),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(
              0xFFFF6F61), // Cor Primaria (Botões Principais, icones importantes)
          onPrimary: const Color(
              0xffFFD700), // Accent Color (Pequenos detalhes em destaque)
          secondary: const Color(0xff4A4A4A), // Secundária (Cor para texto)
          tertiary: const Color(0xffFFE6D5), // Terciária (Fundo da aplicação)
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffFFE6D5),
      ),
      routes: {
        AppRoutes.SPLASH_SCREEN: (ctx) => const SplashScreen(),
        AppRoutes.AUTH: (ctx) => const AuthScreen(),
        AppRoutes.CATEGORIES: (ctx) => const CategoriesScreen(),
      },
    );
  }
}
