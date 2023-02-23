import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomFeaturedItem extends StatelessWidget {
  int index;
  CustomFeaturedItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    scale: index == 0 ? 1 : 1.9,
                    image: const AssetImage(Assets.booktest))),
          ),
        ),
        Positioned(
          bottom: index == 0 ? 10 : 20,
          right: index == 0 ? 10 : 18,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.6)),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
