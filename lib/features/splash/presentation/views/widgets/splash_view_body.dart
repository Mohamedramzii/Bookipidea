import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const Text(
          'A Library In Your Pocket',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, letterSpacing: 2),
        )
      ],
    );
  }
}
