import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/book_model/book_model.dart';
import 'details_view_widgets/custom_BooksYouAlsoLike_widget.dart';
import 'details_view_widgets/custom_book_details_widget.dart';
import 'details_view_widgets/custom_details_appbar_widget.dart';

class DetailsViewBodyWidget extends StatelessWidget {
  const DetailsViewBodyWidget({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomDetailsAppBarWidget(),
            CustomBookDetailsWidget(
              bookModel: bookModel,
            ),
            Custom_BooksYouAlsoLike_Widget(
              bookModel: bookModel,
            ),
          ],
        ),
      ),
    );
  }
}
