import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController(text: 'emerson@flutter.com');
  final controllerPassword = TextEditingController(text: '123456');
  bool clicou = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
              tag: 'ete',
              child: Image.asset(
                'assets/logo.png',
                height: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Bem vindo'),
          ],
        ),
        backgroundColor: const Color(0xFF204353),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Lottie.asset('assets/welcome.json'),
              TextFormField(
                controller: controllerEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu email',
                ),
                validator: (email) {
                  if (email!.isEmpty) {
                    return 'Digite um email';
                  }
                  if (!email.contains('@')) {
                    return 'Digite um email válido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: controllerPassword,
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Digite sua senha',
                ),
                validator: (password) {
                  if (password!.isEmpty) {
                    return 'Digite uma senha';
                  }
                  if (password.length < 6) {
                    return 'A senha deve conter 6 caracteres';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      clicou = !clicou;
                    });

                    await Future.delayed(
                      const Duration(seconds: 3),
                    );
                    Navigator.pushReplacementNamed(context, '/home');
                  }
                },
                child: Center(
                  child: AnimatedContainer(
                    curve: Curves.bounceIn,
                    duration: const Duration(milliseconds: 2000),
                    width: clicou == true ? 40 : width,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color(0xFF204353),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: clicou == true
                        ? const Center(
                            child: Padding(
                            padding: EdgeInsets.all(10),
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ))
                        : const Center(
                            child: Text(
                              'Logar',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
