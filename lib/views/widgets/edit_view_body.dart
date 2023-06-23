import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar_widget.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 52, left: 16, right: 16),
      child: Column(
        children: [
          CustomAppBar(iconSymbol: Icons.save, titleText: "Edit Note"),
          SizedBox(height: 16),
          CustomTextField(hint: "Note Title"),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Your Note Contant",
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
