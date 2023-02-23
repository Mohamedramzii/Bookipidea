import 'package:flutter/material.dart';

import 'custom_featured_item_widget.dart';

class CustomBooksListView extends StatelessWidget {
  double width;
  CustomBooksListView({
    Key? key,
    required this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.35,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CustomFeaturedItem(index:index, height: height, width: width,);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.04,
          );
        },
      ),
    );
  }
}
