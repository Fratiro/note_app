import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_button_widget.dart';
import 'custom_text_field.dart';

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

                var noteModel = NoteModel(
                  noteTitle: noteTitle!,
                  noteDescription: noteDesription!,
                  dateTime: DateTime.now().toString(),
                  colors: Colors.yellow.shade200.value,
                );

                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
