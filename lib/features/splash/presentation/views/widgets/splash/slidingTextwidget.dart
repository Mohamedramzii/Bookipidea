import 'package:flutter/material.dart';

class slidingTextWidget extends StatelessWidget {
  const slidingTextWidget({
    super.key,
    required this.textslidingAnimation,
  });

  final Animation<Offset> textslidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: textslidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: textslidingAnimation,
            child: const Text(
              'A Library In Your Pocket',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, letterSpacing: 2),
            ),
          );
        });
  }
}
