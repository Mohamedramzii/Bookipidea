import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: const Icon(Icons.search),
        enabledBorder: _BuildOutlineInputBorder(),
        focusedBorder: _BuildOutlineInputBorder()
      ),
    );
  }

  OutlineInputBorder _BuildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white)
      );
  }
}
