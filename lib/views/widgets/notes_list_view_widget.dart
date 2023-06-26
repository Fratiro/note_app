import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_Note_cubit/read_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custom_note_card_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        List<NoteModel> allNotes =
            BlocProvider.of<ReadNoteCubit>(context).allNotes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: allNotes.length,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteCard(),
                );
              }),
        );
      },
    );
  }
}
