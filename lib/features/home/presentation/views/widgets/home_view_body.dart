import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/font_styles.dart';

import 'best_seller_widgets/BEST_SELLER_LISTVIEW_ITEM_widget.dart';
import 'best_seller_widgets/best_seller_listview_widget.dart';
import 'custom_appbar_widget.dart';
import 'custom_books_listview_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(width: width, height: height),
                CustomBooksListView(width: width),
                SizedBox(
                  height: height * 0.03,
                ),
                Text('Best Seller',
                    textAlign: TextAlign.start, style: fontStyles.textStyle18),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w ),
            child: bestSellerListView(
              width: width,
              height: height,
            ),
          ),
        )
      ],
    );
  }
}
