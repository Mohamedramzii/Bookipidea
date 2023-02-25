import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/assets.dart';

class CustomDetailsAppBarWidget extends StatelessWidget {
  const CustomDetailsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () => GoRouter.of(context).pop(),
              child: Image.asset(Assets.closeIcon)),
          Image.asset(Assets.cartIcon),
        ],
      ),
    );
  }
}
