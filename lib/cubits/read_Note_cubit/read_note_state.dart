part of 'read_note_cubit.dart';

@immutable
abstract class ReadNoteState {}

class ReadNoteInitial extends ReadNoteState {}

class ReadNoteLoading extends ReadNoteState {}

class ReadNoteSuccess extends ReadNoteState {}

class ReadNoteFailuer extends ReadNoteState {
  final String errorMessage;

  ReadNoteFailuer({required this.errorMessage});
}
