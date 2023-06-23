import 'package:flutter/material.dart';

import 'custom_search_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titleText, required this.iconSymbol});

  final String titleText;
  final IconData iconSymbol;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(
          iconSymbol: iconSymbol,
        )
      ],
    );
  }
}
