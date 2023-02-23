import 'package:flutter/material.dart' show AnimatedBuilder, Animation, BuildContext, Image, Offset, SlideTransition, StatelessWidget, Widget;

import '../../../../../../core/utils/assets.dart';

class slidingImageWidget extends StatelessWidget {
  const slidingImageWidget({
    super.key,
    required this.imageslidingAnimation,
  });

  final Animation<Offset> imageslidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: imageslidingAnimation,
        builder: (context, _) {
          return SlideTransition(
              position: imageslidingAnimation,
              child: Image.asset(Assets.logo));
        });
  }
}
