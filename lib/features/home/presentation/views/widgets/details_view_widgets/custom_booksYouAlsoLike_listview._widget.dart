//custom_booksYouAlsoLike_listviewITEM

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_booksYouAlsoLike_listviewITEM.dart';

class CustomBooksYouAlsoLike_ListViewWidget extends StatelessWidget {
  const CustomBooksYouAlsoLike_ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBooksYouAlsoLike_ListViewItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10.w,
            );
          },
        ));
  }
}
