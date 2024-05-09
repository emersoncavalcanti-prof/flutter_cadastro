import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EntregaPage extends StatelessWidget {
  const EntregaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF204353),
        foregroundColor: Colors.white,
        title: const Text('Meu app'),
      ),
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Lottie.asset('assets/moto.json'),
        ),
      ),
    );
  }
}
