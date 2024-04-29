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
        child: AnimatedAlign(
          duration: const Duration(seconds: 3),
          alignment:
              clicked == true ? Alignment.bottomLeft : Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                clicked = !clicked;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              width: clicked == true ? 100 : 200,
              height: clicked == true ? 100 : 200,
              decoration: BoxDecoration(
                color: clicked == true ? Colors.blue : Colors.red,
                borderRadius:
                    clicked == true ? BorderRadius.circular(50) : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
