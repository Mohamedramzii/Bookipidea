import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'BEST_SELLER_LISTVIEW_ITEM_widget.dart';

class bestSellerListView extends StatelessWidget {
  double width, height;
  bestSellerListView({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return BookListViewItem_Widget(
          width: width,
          height: height,
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 20.h,
        );
      },
    );
  }
}
