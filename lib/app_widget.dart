import 'package:flutter/material.dart';
import 'package:flutter_cadastro/anima_page.dart';
import 'package:flutter_cadastro/detalhes_page.dart';
import 'package:flutter_cadastro/entrega_page.dart';
import 'package:flutter_cadastro/home_page.dart';
import 'package:flutter_cadastro/login_page.dart';
import 'package:flutter_cadastro/responsive_page.dart';
import 'package:flutter_cadastro/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/anima': (context) => const AnimaPage(),
        '/entrega': (context) => const EntregaPage(),
        '/detalhes': (context) => const DetalhesPage(),
        '/responsive': (context) => const ResponsivePage(),
      },
    );
  }
}
