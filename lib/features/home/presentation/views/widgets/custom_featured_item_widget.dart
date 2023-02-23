import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomFeaturedItem extends StatelessWidget {
  int index;
  double width, height;
  CustomFeaturedItem({
    Key? key,
    required this.index,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: index != 0
              ? EdgeInsets.only(top: height * 0.03)
              : const EdgeInsets.only(top: 0),
          width: index == 0 ? width * 0.42 : width * 0.37,
          height: index == 0 ? height * 0.32 : height * 0.26,
          child: Image.asset(
            Assets.booktest,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: index == 0 ? height * 0.04 : height * 0.07,
          right: index == 0 ? width * 0.02 : width * 0.02,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(0.6)),
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
