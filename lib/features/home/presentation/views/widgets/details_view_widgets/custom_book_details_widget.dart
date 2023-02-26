import 'package:book_app/core/common_widgets/Custom_Button.dart';
import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets.dart';
import '../home_widgets/newest_books_widgets/book_rate_widget.dart';

class CustomBookDetailsWidget extends StatelessWidget {
  const CustomBookDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 40.h),
          child: Container(
            width: 160.w,
            height: 245.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(Assets.booktest),
          ),
        ),

        //Book Name
        Text(
          'The Jungle Book',
          style: fontStyles.textStyle30aleo,
        ),
        // Author Name
        Padding(
          padding: EdgeInsets.only(top: 4.h, bottom: 16.h),
          child: Text(
            'Rudyard Kipling',
            style:
                fontStyles.textStyle18.copyWith(color: const Color(0xff707070)),
          ),
        ),

        //Rating
        ratingWidget(
          width: width,
        ),
        SizedBox(
          height: 37.h,
        ),

        //Price and Preview Button
        Row(
          children: const [
            Expanded(
                child: CustomButtonWidget(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              buttontext: '19.99€',
            )),
            Expanded(
                child: CustomButtonWidget(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              buttontext: 'Free preview',
              fontsize: 16,
            )),
          ],
        )
      ],
    );
  }
}
