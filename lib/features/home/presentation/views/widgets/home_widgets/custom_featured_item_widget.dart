import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomFeaturedItem extends StatelessWidget {
  double width, height;
  final String imageurl;
  CustomFeaturedItem({
    Key? key,
    required this.height,
    required this.width,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
          imageUrl: imageurl,
          imageBuilder: (context, imageProvider) => Stack(
                children: [
                  Container(
                    width: width * 0.50,
                    height: height * 0.32,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fill,
                        )),
                  ),
                  Positioned(
                      right: width * 0.03,
                      bottom: height * 0.04,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: const Icon(
                          Icons.menu_book_outlined,
                          color: Colors.green,
                        ),
                      ))
                ],
              ),
          placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
          errorWidget: (context, url, error) =>
              const Icon(Icons.ac_unit_outlined)),
    );
  }
}
