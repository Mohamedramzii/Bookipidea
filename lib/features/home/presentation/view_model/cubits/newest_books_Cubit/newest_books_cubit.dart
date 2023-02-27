import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import 'package:book_app/features/home/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  HomeRepo homeRepo;
  NewestBooksCubit(
    this.homeRepo,
  ) : super(NewestBooksInitial());

  Future<void> fetchNewestBooksFromServer() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailureState(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccessState(books: books));
      },
    );
  }
}
