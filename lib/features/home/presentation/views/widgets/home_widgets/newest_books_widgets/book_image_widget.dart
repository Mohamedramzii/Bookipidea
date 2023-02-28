import 'package:flutter/material.dart';

class bookImageWidget extends StatelessWidget {
  final String imageurl;
  const bookImageWidget({
    Key? key,
    required this.imageurl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageurl),
          ),
        ),
      ),
    );
  }
}
