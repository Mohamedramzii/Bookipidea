import 'package:book_app/core/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              const Icon(Icons.error_outline,color: Colors.red,size: 60,),
              SizedBox(height: 20.h,),
              Text(text,style: fontStyles.textStyle20,textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
