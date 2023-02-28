import 'package:flutter/material.dart';

import 'package:book_app/core/utils/font_styles.dart';

class bookNameWidget extends StatelessWidget {
  const bookNameWidget({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .5,
      child: Text(
        text,
        style: fontStyles.textStyle20aleo,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
