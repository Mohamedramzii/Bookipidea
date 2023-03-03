import 'package:book_app/core/common_widgets/custom_error_message.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/newest_books_Cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../../../core/common_widgets/custom_loading_widget.dart';
import 'Newest_Books_LISTVIEW_ITEM_widget.dart';

class bestSellerListView extends StatelessWidget {
  double width, height;
  bestSellerListView({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.separated(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BookListViewItem_Widget(
                bookModel: state.books[index],
                width: width,
                height: height,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20.h,
              );
            },
          );
        } else if (state is NewestBooksFailureState) {
          return CustomErrorWidget(text: state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}

