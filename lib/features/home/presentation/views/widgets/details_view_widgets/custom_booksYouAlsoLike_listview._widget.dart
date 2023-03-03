//custom_booksYouAlsoLike_listviewITEM

// ignore_for_file: camel_case_types

import 'package:book_app/core/common_widgets/custom_error_message.dart';
import 'package:book_app/core/common_widgets/custom_loading_widget.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/similar_books_Cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_booksYouAlsoLike_listviewITEM.dart';

class CustomBooksYouAlsoLike_ListViewWidget extends StatelessWidget {
  const CustomBooksYouAlsoLike_ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
              height: 120,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomBooksYouAlsoLike_ListViewItem(
                    imageurl:
                        state.books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
              ));
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
