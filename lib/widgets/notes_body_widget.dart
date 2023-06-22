import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar_widget.dart';
import 'notes_list_view_widget.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 52),
            CustomAppBar(),
            SizedBox(height: 20),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
