import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/presentation/view_model/cubits/similar_books_Cubit/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/details_view_body_widget.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooksFromServer(
        category: widget.bookModel.volumeInfo!.categories?[0] ?? 'Computers' );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DetailsViewBodyWidget(
        bookModel: widget.bookModel,
      ),
    );
  }
}
