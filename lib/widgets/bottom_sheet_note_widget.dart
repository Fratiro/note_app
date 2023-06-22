import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

import 'custom_button_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(hint: "Add Note Title"),
            const SizedBox(height: 16),
            const CustomTextField(hint: "Add your note here....", maxLine: 5),
            const SizedBox(height: 16),
            CustomButton(
                buttonWidth: MediaQuery.of(context).size.width,
                buttonHeight: 44,
                backgroundColor: Colors.yellow.shade200,
                buttonText: "Add Your Note",
                textColor: Colors.black)
          ],
        ),
      ),
    );
  }
}
