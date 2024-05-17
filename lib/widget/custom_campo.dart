import 'package:flutter/material.dart';

class CustomCampo extends StatelessWidget {
  final String label;
  final Icon icone;
  final bool isObscure;

  const CustomCampo(
      {super.key,
      required this.label,
      required this.icone,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: controllerEmail,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: icone,
        border: const OutlineInputBorder(),
        labelText: label,
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
    );
  }
}
