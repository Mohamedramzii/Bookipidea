import 'package:book_app/core/common_widgets/custom_error_message.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/featured_books_Cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../../../../../../core/utils/assets.dart';
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
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: height * 0.35,
            child: ListView.separated(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(Routes.detailsview,
                        extra: state.books[index]);
                  },
                  child: CustomFeaturedItem(
                    imageurl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    height: height,
                    width: width,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: width * 0.04,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return Center(
            child: LottieBuilder.asset(
              Assets.loadingIcon2,
              width: 150,
            ),
          );
        }
      },
    );
  }
}
