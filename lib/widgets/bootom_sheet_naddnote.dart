import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: ListView(
        
        children:const [
          CustomTextField(
            hint: "Add Note Title",
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Add your note here....",
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
