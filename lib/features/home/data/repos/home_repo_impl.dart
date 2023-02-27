import 'package:dartz/dartz.dart';

import 'package:book_app/core/api_services.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import '../models/book_model/book_model.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImpl(
    this.apiServices,
  );

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
