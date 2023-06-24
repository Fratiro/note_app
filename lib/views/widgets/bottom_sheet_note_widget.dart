import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
import 'custom_button_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: BottomSheetForm(),
      ),
    );
  }
}

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({
    super.key,
  });

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? noteTitle, noteDesription;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              noteTitle = value;
            },
            hint: "Add Note Title",
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Sorry this field is required please add a note title";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: "Add your note here....",
            maxLine: 5,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Sorry this field is required please add your note";
              } else {
                return null;
              }
            },
            onSaved: (value) {
              noteDesription = value;
            },
          ),
          const SizedBox(height: 52),
          CustomButton(
            buttonOnPress: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            buttonWidth: MediaQuery.of(context).size.width,
            buttonHeight: 44,
            backgroundColor: Colors.yellow.shade200,
            buttonText: "Add Your Note",
            textColor: Colors.black,
          )
        ],
      ),
    );
  }
}
