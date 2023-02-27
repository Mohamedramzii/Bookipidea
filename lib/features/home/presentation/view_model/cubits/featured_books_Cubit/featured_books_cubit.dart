import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

import '../../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImp) : super(FeaturedBooksInitial());

  HomeRepoImpl homeRepoImp;

  Future<void> fetchFeaturedBooksFromServer() async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepoImp.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books: books));
    });
  }
}
