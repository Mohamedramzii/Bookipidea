import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class bookNameWidget extends StatelessWidget {
  const bookNameWidget({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .5,
      child: Text(
        'The Jungle Book',
        style: fontStyles.textStyle20aleo,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
