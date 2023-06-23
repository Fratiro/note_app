import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar_widget.dart';
import 'notes_list_view_widget.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 52, right: 16, left: 16),
        child: Column(
          children: [
            CustomAppBar(titleText: "All Notes", iconSymbol: Icons.search),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
