// ignore_for_file: camel_case_types

import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_authoName_widget.dart';
import 'book_image_widget.dart';
import 'book_name_widget.dart';
import 'book_rate_widget.dart';

class bestSellerListViewItem extends StatelessWidget {
  double width, height;
  bestSellerListViewItem({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( right: 20.w),
      child: SizedBox(
        height: 125,
        // width: 70 ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //image
            bookImageWidget(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //book name
                    bookNameWidget(width: width),
                    //author name
                    bookAuthorNameWidget(height: height),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 0.003),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //price
                          Text(
                            '19.99 €',
                            style: fontStyles.textStyle20,
                          ),
                          ratingWidget(width: width)
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
    );
  }
}
