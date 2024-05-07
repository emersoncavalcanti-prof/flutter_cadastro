import 'package:flutter/material.dart';
import 'package:flutter_cadastro/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double width = 0.0;
  double height = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        width = 250.0;
        height = 250.0;
      });

      final nav = Navigator.of(context);
      await Future.delayed(
        const Duration(seconds: 3),
      );
      nav.pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(seconds: 2),
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LoginPage(),
          settings: const RouteSettings(name: '/login'),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 3),
                curve: Curves.elasticOut,
                width: width,
                height: height,
                child: Hero(tag: 'ete', child: Image.asset('assets/logo.png')),
              ),
              const CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
