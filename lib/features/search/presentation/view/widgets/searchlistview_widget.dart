// ignore_for_file: non_constant_identifier_names
import 'package:book_app/core/common_widgets/custom_loading_widget.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/font_styles.dart';
import 'package:book_app/features/search/presentation/viewmodel/cubits/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return BlocProvider.of<SearchCubit>(context).controller.text.isEmpty
              ? Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      LottieBuilder.asset(Assets.search),
                      const Text('Search In Your Library!')
                    ],
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    // shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: state.books.length,
                    itemBuilder: (context, index) {
                      var authors = state.books[index].volumeInfo!.authors;
                      return GestureDetector(
                        onTap: () => GoRouter.of(context).push(
                            Routes.detailsview,
                            extra: state.books[index]),
                        child: Row(
                          children: [
                            // Text(searchlist[index].volumeInfo!.publishedDate??'xxxx'),
                            // Text(searchlist[index].volumeInfo!.title??'xxxx'),
                            SearchImageWidget(state, index),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SearchBookNameWidget(width, state, index),
                                SearchAuthorNameWidget(authors)
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                  ),
                );
        } else if (state is SearchFailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                LottieBuilder.asset(Assets.notfound),
                const Text(
                  'It seems you\'ve entered a wrong book name\ntry again with right one!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 173, 12, 0),
                      fontWeight: FontWeight.w900),
                )
              ],
            ),
          );
        } else {
          return BlocProvider.of<SearchCubit>(context).controller.text.isEmpty
              ? Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      LottieBuilder.asset(Assets.search),
                      const Text('Search In Your Library!')
                    ],
                  ),
                )
              : const LoadingWidget();
        }
      },
    );
  }

  SizedBox SearchAuthorNameWidget(List<String>? authors) {
    return SizedBox(
      width: 100.w,
      child: Wrap(
        direction: Axis.vertical,
        children: List.generate(
            authors?.length ?? 4,
            (indexx) => Text(
                  authors?[indexx] ?? '',
                  style: fontStyles.textStyle14
                      .copyWith(fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )).toList(),
      ),
    );
  }

  SizedBox SearchBookNameWidget(double width, SearchSuccess state, int index) {
    return SizedBox(
      width: width * .5,
      child: Text(
        state.books[index].volumeInfo!.title ?? 'Book Name',
        style: fontStyles.textStyle20aleo,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  SizedBox SearchImageWidget(SearchSuccess state, int index) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            state.books[index].volumeInfo!.imageLinks?.thumbnail! ??
                'https://picsum.photos/200/300?grayscale',
            fit: BoxFit.fill,
          )),
    );
  }
}
