import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLine = 1,
      this.onSaved,
       this.validator});

  final String hint;
  final int maxLine;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      maxLines: maxLine,
      cursorColor: Colors.yellow.shade200,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.yellow.shade200),
          border: outlineBoarder(),
          enabledBorder: outlineBoarder(),
          focusedBorder: outlineBoarder(boarderColor: Colors.yellow.shade200)),
    );
  }

  OutlineInputBorder outlineBoarder({Color? boarderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: boarderColor ?? Colors.white),
    );
  }
}
