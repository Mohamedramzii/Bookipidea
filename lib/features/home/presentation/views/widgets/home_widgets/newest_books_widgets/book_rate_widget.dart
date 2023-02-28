import 'package:flutter/material.dart';

import 'package:book_app/core/utils/font_styles.dart';

class ratingWidget extends StatelessWidget {
  const ratingWidget({
    Key? key,
    required this.width,
    required this.bookcount,
    // required this.ratecount,
  }) : super(key: key);

  final double width;
  final int bookcount;
  // final int ratecount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //icon
        const Icon(
          Icons.my_library_books_rounded,
          color: Colors.white,
        ),
        SizedBox(
          width: width * 0.007,
        ),
        //rate
        Text(
          '$bookcount pages',
          style: fontStyles.textStyle16,
        ),
        // SizedBox(
        //   width: width * 0.01,
        // ),
        // //rate number
        // Text(
        //   '(2390)',
        //   style: fontStyles.textStyle14,
        // )
      ],
    );
  }
}
