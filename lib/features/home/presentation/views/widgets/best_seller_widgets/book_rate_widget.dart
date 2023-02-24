import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ratingWidget extends StatelessWidget {
  const ratingWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //icon
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: width * 0.007,
        ),
        //rate
        Text(
          '4.8',
          style: fontStyles.textStyle16,
        ),
        SizedBox(
          width: width * 0.01,
        ),
        //rate number
        Text(
          '(2390)',
          style: fontStyles.textStyle14,
        )
      ],
    );
  }
}
