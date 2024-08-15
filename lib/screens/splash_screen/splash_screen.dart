import 'package:flavor_fusion/utils/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat(); // A animação ficará em loop

    Future.delayed(const Duration(seconds: 3, microseconds: 500), () {
      Navigator.of(context).pushNamed(AppRoutes.AUTH);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.tertiary,
        child: Center(
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Positioned(
                    top: 0,
                    left: _controller.value * larguraTela * 2 - larguraTela,
                    child: Image.asset(
                      'assets/imgs/montain.png', // caminho da imagem carregada
                      width: larguraTela * 3,
                      // Tornando a imagem duas vezes maior que a largura da tela para dar o efeito de deslizamento
                      height: alturaTela,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              Center(
                child: Text(
                  'Flavor Fusion',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
