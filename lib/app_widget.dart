import 'package:flutter/material.dart';
import 'package:flutter_cadastro/anima_page.dart';
import 'package:flutter_cadastro/detalhes_page.dart';
import 'package:flutter_cadastro/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/anima',
      routes: {
        '/': (context) => const HomePage(),
        '/anima': (context) => const AnimaPage(),
        '/detalhes': (context) => const DetalhesPage(),
      },
    );
  }
}
