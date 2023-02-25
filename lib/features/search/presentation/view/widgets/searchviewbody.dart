import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/views/widgets/home_widgets/best_seller_widgets/BEST_SELLER_LISTVIEW_ITEM_widget.dart';
import 'custom_search_textfield_widget.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const CustomSearchTextField(),
           SizedBox(height: 20.h,),
           const Text('Results'),
           SizedBox(height: 20.h,),
          const SearchResultListView()
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.separated(
        // shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
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
      ),
    );
    ;
  }
}
