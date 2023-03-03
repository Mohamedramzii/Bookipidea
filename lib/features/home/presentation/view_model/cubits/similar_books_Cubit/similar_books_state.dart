part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoadingState extends SimilarBooksState {}

class SimilarBooksSuccessState extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccessState({
    required this.books,
  });
}

class SimilarBooksFailureState extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailureState({
    required this.errMessage,
  });
}
