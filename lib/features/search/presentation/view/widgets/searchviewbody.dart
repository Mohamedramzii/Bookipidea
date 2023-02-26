import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_search_textfield_widget.dart';
import 'searchlistview_widget.dart';

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

