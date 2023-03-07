import 'package:dartz/dartz.dart';

import 'package:book_app/core/api_services.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/search/data/search_repos/search_repo.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  ApiServices apiServices;
  SearchRepoImpl(
     this.apiServices,
  );
  @override
  Future<Either<Failures, List<BookModel>>> fetchSearchedBooks(
      {required String searchText}) async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free- ebooks&q=title:$searchText ');
      List<BookModel> books = [];
      for (var book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
