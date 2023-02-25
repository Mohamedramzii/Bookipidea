import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';

class bookAuthorNameWidget extends StatelessWidget {
  const bookAuthorNameWidget({super.key, 
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.003),
      child: Text(
        'Rudyard Kipling',
        style: fontStyles.textStyle14
            .copyWith(fontWeight: FontWeight.w500),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
