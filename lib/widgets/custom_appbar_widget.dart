import 'package:flutter/material.dart';

import 'custom_search_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Note",
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
