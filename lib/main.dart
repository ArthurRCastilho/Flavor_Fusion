import 'package:flavor_fusion/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6F61),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFFF6F61), // Cor Primaria (Botões Principais, icones importantes)
          onPrimary: const Color(0xffFFD700), // Accent Color (Pequenos detalhes em destaque)
          secondary: const Color(0xff4A4A4A), // Secundária (Cor para texto)
          tertiary: const Color(0xffFFE6D5), // Terciária (Fundo da aplicação)
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
