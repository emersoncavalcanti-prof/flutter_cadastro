import 'package:flutter/material.dart';

class AnimaPage extends StatefulWidget {
  const AnimaPage({super.key});

  @override
  State<AnimaPage> createState() => _AnimaPageState();
}

class _AnimaPageState extends State<AnimaPage> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              setState(() {
                clicked = !clicked;
              });
            },
            child: AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(seconds: 1),
              width: clicked == true ? 100 : 200,
              height: clicked == true ? 100 : 200,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
