import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.yellow.shade200,
      decoration: InputDecoration(
          hintText: "Add Your Note Here...",
          hintStyle: TextStyle(color: Colors.yellow.shade200),
          border: outlineBoarder(),
          enabledBorder: outlineBoarder(),
          focusedBorder: outlineBoarder(boarderColor: Colors.yellow.shade200)),
    );
  }

  OutlineInputBorder outlineBoarder({Color? boarderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: boarderColor ?? Colors.white),
    );
  }
}
