import 'package:flutter/material.dart';

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
    return ListView.builder(
        // shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          return bestSellerListViewItem(
            width: width,
            height: height,
          );
        });
  }
}
