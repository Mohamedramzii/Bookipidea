part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccessState({
    required this.books,
  });
}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFailureState({
    required this.errMessage,
  });
}
