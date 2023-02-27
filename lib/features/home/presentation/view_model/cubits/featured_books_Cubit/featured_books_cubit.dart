import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchFeaturedBooksFromServer()async{
  emit(FeaturedBooksLoadingState());
    var result= await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailureState(errMessage: failure.errMessage));
    }, (books){
      emit(FeaturedBooksSuccessState(books: books));
    });
  }
}
