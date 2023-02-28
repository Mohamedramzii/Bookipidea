import 'package:flutter/material.dart';

import 'package:book_app/core/utils/font_styles.dart';

class bookAuthorNameWidget extends StatelessWidget {
  const bookAuthorNameWidget({
    Key? key,
    required this.height,
    required this.text,
  }) : super(key: key);

  final double height;
  final List<String> text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.003),
      child: Wrap(
        direction: Axis.vertical,
        children: List.generate(
            text.length,
            (index) => Text(
                  text[index],
                  style: fontStyles.textStyle14
                      .copyWith(fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )).toList(),
      ),
    );
  }
}
