import 'package:hive/hive.dart';
part 'note_model.g.dart';



@HiveType(typeId: 0)
class NoteModel extends HiveObject {

  @HiveField(0)
  final String noteTitle;
  @HiveField(1)
  final String noteDescription;
  @HiveField(2)
  final String dateTime;
  @HiveField(3)
  final int colors;

  NoteModel({
    required this.noteTitle,
    required this.noteDescription,
    required this.dateTime,
    required this.colors,
  });
}
