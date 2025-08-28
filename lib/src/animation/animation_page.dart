import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  // AnimatedContainer
  // AnimatedOpacity

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Exemplo'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Start'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
