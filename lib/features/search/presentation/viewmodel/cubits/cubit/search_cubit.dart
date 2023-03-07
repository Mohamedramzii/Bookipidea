import 'package:book_app/core/api_services.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/search/data/search_repos/search_repoImpl.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../home/data/models/book_model/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchRepoImpl searchRepoImpl;
  SearchCubit(
    this.searchRepoImpl,
  ) : super(SearchInitial());

  // ApiServices apiServices;
  // List<BookModel> Searchbooks = SearchSuccess.books ;
  TextEditingController controller=TextEditingController();

  fetchAllSearchedBookFromServer({required String searchText}) async {
    emit(SearchLoading());
    var result =
        await searchRepoImpl.fetchSearchedBooks(searchText: searchText);

    result.fold(
      (failure) {
        emit(SearchFailure(errMessage: failure.errMessage));
      },
      (book) => emit(SearchSuccess(books: book)),
    );
  }

  // fetchSearcedbooks({required String searchtext}) async {
  //   Searchbooks = [];
  //   emit(NoSearchingState());
  //   emit(SearchLoading());

  //   try {
  //     await apiServices
  //         .get(endPoint: 'volumes?Filtering=free- ebooks&q=title:$searchtext ')
  //         .then((value) {
  //       for (var book in value['items']) {
  //         Searchbooks.add(BookModel.fromJson(book));
  //       }
  //     });
  //     emit(SearchSuccess());
  //   } catch (e) {
  //     emit(SearchFailure());
  //   }
  // }
  // @override
  // Future<Either<Failures, List<BookModel>>> fetchAllBooks(
  //     {required String searchText}) async {
  //   try {
  //     var data = await apiServices.get(
  //         endPoint: 'volumes?Filtering=free- ebooks&q=title=$searchText');
  //     for (var item in data['items']) {
  //       books.add(BookModel.fromJson(item));
  //     }

  //     return right(books);
  //   } catch (e) {
  //     if (e is DioError) {
  //       return left(ServerFailure.fromDioError(e));
  //     }
  //     return left(ServerFailure(e.toString()));
  //   }
  // }

  // void SearchLogic(BuildContext context, {required String searchText}) {
  //     emit(SearchLoading());
  //   searchText = searchText.toLowerCase();
  //   searchBooks = books.where((book) {
  //     return book.volumeInfo!.title!.toLowerCase().contains(searchText);
  //   }).toList();
  //   emit(SearchSuccess(books: searchBooks));
  // }
}
