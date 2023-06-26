import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

import '../../constants.dart';

part 'read_note_state.dart';

class ReadNoteCubit extends Cubit<ReadNoteState> {
  ReadNoteCubit() : super(ReadNoteInitial());

  fetchAllData() {
    try {
      var noteBox = Hive.box<NoteModel>(kHiveBoxNotes);
      List<NoteModel> noteList = noteBox.values.toList();
      emit(ReadNoteSuccess());
    } catch (ex) {
      emit(ReadNoteFailuer(errorMessage: ex.toString()));
      debugPrint(ex.toString());
    }
  }
}
