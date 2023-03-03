import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class bookImageWidget extends StatelessWidget {
  final String imageurl;
  const bookImageWidget({
    Key? key,
    required this.imageurl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageurl,
      child: CachedNetworkImage(
        imageUrl: imageurl,
        placeholder: (context, url) => const AspectRatio(
            aspectRatio: 0.6,
            child: Center(
              child: Icon(Icons.image_outlined),
            )),
            errorWidget: (context, url, error) => const AspectRatio(
            aspectRatio: 0.6,
            child: Center(
              child: Icon(Icons.error_sharp),
            )),
        imageBuilder: (context, imageProvider) => AspectRatio(
          aspectRatio: 0.6,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageurl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
