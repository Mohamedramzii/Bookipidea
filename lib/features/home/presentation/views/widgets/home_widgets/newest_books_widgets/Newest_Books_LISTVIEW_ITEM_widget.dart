// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/font_styles.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';

import 'book_authoName_widget.dart';
import 'book_image_widget.dart';
import 'book_name_widget.dart';
import 'book_rate_widget.dart';

class BookListViewItem_Widget extends StatelessWidget {
  double width, height;
  BookModel bookModel;
  BookListViewItem_Widget({
    Key? key,
    required this.height,
    required this.width,
    required this.bookModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Routes.detailsview);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 20.w),
        child: SizedBox(
          height: 125,
          // width: 70 ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //image
              bookImageWidget(
                imageurl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //book name
                      bookNameWidget(
                        width: width,
                        text: bookModel.volumeInfo!.title!,
                      ),
                      //author name
                      bookAuthorNameWidget(
                        height: height,
                        text: bookModel.volumeInfo!.authors!,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.003),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //price
                            Text(
                              'Free',
                              style: fontStyles.textStyle20,
                            ),
                            ratingWidget(
                              width: width,
                              bookcount: bookModel.volumeInfo!.pageCount!,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
