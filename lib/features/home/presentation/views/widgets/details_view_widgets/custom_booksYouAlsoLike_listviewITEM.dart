// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class CustomBooksYouAlsoLike_ListViewItem extends StatelessWidget {
  const CustomBooksYouAlsoLike_ListViewItem({
    Key? key,
    required this.imageurl,
  }) : super(key: key);
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageurl,
        // loadingBuilder: (context, child, loadingProgress) => const Center(
        //   child: LoadingWidget(),
        // ),
        errorBuilder: (context, error, stackTrace) => const Center(
          child: Icon(Icons.error),
        ),
      ),
    );
  }
}
