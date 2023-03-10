import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_app/core/utils/font_styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/details_view_widgets/custom_booksYouAlsoLike_listview._widget.dart';

import '../../../../data/models/book_model/book_model.dart';

class Custom_BooksYouAlsoLike_Widget extends StatelessWidget {
  const Custom_BooksYouAlsoLike_Widget({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.h,
        ),
        Text(
          'You may also like',
          textAlign: TextAlign.start,
          style: fontStyles.textStyle14.copyWith(color: Colors.white),
        ),
        SizedBox(
          height: 16.h,
        ),
        const CustomBooksYouAlsoLike_ListViewWidget()
      ],
    );
  }
}
