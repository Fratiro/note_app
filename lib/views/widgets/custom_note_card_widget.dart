import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.yellow.shade100),
        padding: const EdgeInsets.only(
          top: 24,
          left: 24,
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Text(
                  "Building Flutter tips Card here Hello world to the next line",
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                right: 24,
              ),
              child: Text(
                "June 21-2023",
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
