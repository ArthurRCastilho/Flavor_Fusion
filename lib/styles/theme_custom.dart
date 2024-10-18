import 'package:flavor_fusion/styles/custom_colors.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  // Cores
  primaryColor: const Color(0xFFFF6F61),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: CustomColors()
        .colorButtonsAndImportantIcons, // Cor Primaria (Botões Principais, icones importantes)
    onPrimary: CustomColors()
        .colorSmallDetails, // Accent Color (Pequenos detalhes em destaque)
    secondary: CustomColors().colorText, // Secundária (Cor para texto)
    tertiary: CustomColors().colorBackground, // Terciária (Fundo da aplicação)
  ),

  // AppBar
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors().colorBackground, // Terciária (Fundo da aplicação)
    foregroundColor: CustomColors().colorBackground, // Terciária (Fundo da aplicação)
    surfaceTintColor: CustomColors().colorBackground, // Terciária (Fundo da aplicação)
  ),

  // Scaffold
  scaffoldBackgroundColor: CustomColors().colorBackground, // Terciária (Fundo da aplicação)

  // Textos
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 18,
      color: CustomColors().colorText,
    ),
  ),

  //Outros
  useMaterial3: true,
);
