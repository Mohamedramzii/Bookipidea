import 'package:book_app/features/home/presentation/views/widgets/details_view_body_widget.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsViewBodyWidget(),
    );
  }
}
