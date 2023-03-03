import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:book_app/features/home/data/models/book_model/book_model.dart';

import '../../../../data/repos/home_repo_impl.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  HomeRepoImpl homeRepoImpl;
  SimilarBooksCubit(
    this.homeRepoImpl,
  ) : super(SimilarBooksInitial());

  Future<void> fetchSimilarBooksFromServer({required String category}) async {
    emit(SimilarBooksLoadingState());
    var result = await homeRepoImpl.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccessState(books: books));
      },
    );
  }
}
