import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

class MyAnimatedButton extends StatefulWidget {
  const MyAnimatedButton({super.key});

  @override
  MyAnimatedButtonState createState() => MyAnimatedButtonState();
}

class MyAnimatedButtonState extends State<MyAnimatedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIconButton(
          size: 100,
          onPressed: () {},
          duration: const Duration(milliseconds: 100),
          splashColor: Colors.transparent,
          icons: const <AnimatedIconItem>[
            AnimatedIconItem(
              icon: Icon(Icons.play_arrow, color: Colors.purple),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.pause, color: Colors.red),
            ),
          ],
        ),
        // AnimatedIconButton
      ),
    );
  }
}
