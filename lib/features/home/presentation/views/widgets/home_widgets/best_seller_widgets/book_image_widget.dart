import 'package:flutter/material.dart';

import '../../../../../../../core/utils/assets.dart';

class bookImageWidget extends StatelessWidget{
    
  @override
  Widget build(BuildContext context) 
    {
      return AspectRatio(
            aspectRatio: 0.6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.booktest),
                ),
              ),
            ),
          );
  }
    }
