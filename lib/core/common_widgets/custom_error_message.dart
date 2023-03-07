import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350.w,
        height: 160.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 60.h,
                  width: 60.w,
                  child: LottieBuilder.asset(
                    Assets.connection_error,
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                height: 15.h,
              ),
              Text(
                text,
                style: fontStyles.textStyle20,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
