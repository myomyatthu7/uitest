import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';

class MyAnimation extends StatefulWidget {
  const MyAnimation({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAnimationState();
  }
}

class _MyAnimationState extends State<MyAnimation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Animate(
          effects: const [
            FadeEffect(),
            SlideEffect(),
          ],
          child: const Text('Hello Flutter'),
        ),
        const Text('Hello World')
            .animate()
            .fade(duration: 500.ms)
            .slide(curve: Curves.easeInCirc)
      ],
    );
  }
}
