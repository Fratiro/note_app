import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/read_Note_cubit/read_note_cubit.dart';
import 'package:note_app/views/widgets/custom_appbar_widget.dart';
import 'notes_list_view_widget.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 52, right: 16, left: 16),
        child: Column(
          children: [
            const CustomAppBar(
                titleText: "All Notes", iconSymbol: Icons.search),
            Expanded(
              child: BlocProvider(
                create: (context) => ReadNoteCubit(),
                child: const NotesListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
