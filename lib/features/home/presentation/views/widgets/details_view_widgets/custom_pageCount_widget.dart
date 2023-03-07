import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PagesCountWidget extends StatelessWidget {
  final double width;
  final int pagecount;
  const PagesCountWidget({
    Key? key,
    required this.width,
    required this.pagecount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.my_library_books_rounded,
          color: Colors.white,
        ),
        SizedBox(
          width: width * 0.007,
        ),
        //rate
        Text(
          '$pagecount Pages' ,
          style: fontStyles.textStyle16,
        )
      ],
    );
  }
}