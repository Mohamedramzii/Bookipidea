// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets.dart';

class CustomBooksYouAlsoLike_ListViewItem extends StatelessWidget {
  const CustomBooksYouAlsoLike_ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 112.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Image.asset(Assets.booktest),
    );
  }
}
