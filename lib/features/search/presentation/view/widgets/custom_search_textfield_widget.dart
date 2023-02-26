import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    bool istyping = false;
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: istyping == false
              ? const Icon(
                  Icons.search,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
          enabledBorder: _BuildOutlineInputBorder(),
          focusedBorder: _BuildOutlineInputBorder()),
      onChanged: (value) {
        istyping = true;
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
