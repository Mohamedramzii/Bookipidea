import 'package:book_app/core/common_widgets/custom_loading_widget.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/featured_books_Cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../data/models/book_model/book_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Assets.logo,
                  height: height * 0.04,
                ),
                IconButton(
                    onPressed: () => GoRouter.of(context)
                        .push(Routes.searchview),
                    icon: Image.asset(Assets.searchIcon))
              ],
            ),
          );
        
    
    
  }
}
