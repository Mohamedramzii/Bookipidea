import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/book_model/book_model.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  HomeRepoImpl homeRepoImpl;
  NewestBooksCubit(
    this.homeRepoImpl,
  ) : super(NewestBooksInitial());

  Future<void> fetchNewestBooksFromServer() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepoImpl.fetchNewestBooks();

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
