import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box(kHiveBoxNotes);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (ex) {
      emit(AddNoteFailuer(errorMessage: ex.toString()));
      debugPrint(ex.toString());
    }
  }
}
