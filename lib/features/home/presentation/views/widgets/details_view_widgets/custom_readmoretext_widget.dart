import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';

class CustomReadMoreWidget extends StatelessWidget {
  final String description;
  const CustomReadMoreWidget({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      numLines: 3,
      readMoreText: 'Read more',
      readLessText: 'Read less',
      readMoreIconColor: Colors.green,
      readMoreTextStyle: fontStyles.textStyle14.copyWith(color: Colors.green),
      readMoreAlign: Alignment.bottomCenter,

    );
  }
}
