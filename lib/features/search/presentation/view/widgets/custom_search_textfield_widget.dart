import 'package:book_app/features/search/presentation/viewmodel/cubits/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // TextEditingController controller = TextEditingController();
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return TextField(
          controller: BlocProvider.of<SearchCubit>(context).controller,
          decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              enabledBorder: _BuildOutlineInputBorder(),
              focusedBorder: _BuildOutlineInputBorder()),
          onChanged: (value) {
            BlocProvider.of<SearchCubit>(context)
                .fetchAllSearchedBookFromServer(searchText: '$value ');
          },
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder _BuildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
