import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar_widget.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 52, left: 16, right: 16),
      child: Column(
        children: [
          const CustomAppBar(iconSymbol: Icons.save, titleText: "Edit Note"),
          const SizedBox(height: 16),
          CustomTextField(
            hint: "Note Title",
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Sorry this field is required";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: "Your Note Contant",
            maxLine: 5,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Sorry this field is required";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
