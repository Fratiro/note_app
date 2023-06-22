import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar_widget.dart';

import 'custom_note_card_widget.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 52, left: 16, right: 16),
        child: Column(
          children: [
            CustomAppBar(),
            NoteCard(),
          ],
        ),
      ),
    );
  }
}
