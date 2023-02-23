import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'custom_appbar_widget.dart';
import 'custom_books_listview_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustomAppBar(width: width, height: height),
        CustomBooksListView(width:width),
        



        
      ],
    );
  }
}
