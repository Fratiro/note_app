import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            subtitle: const Padding(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: Text(
                "Building Flutter tips Card here",
                style: TextStyle(color: Colors.black),
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
          const Padding(
            padding: EdgeInsets.only(
              top: 16,
              right: 24,
            ),
            child: Text(
              "June 21-2023",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
