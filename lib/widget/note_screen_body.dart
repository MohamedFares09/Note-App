import 'package:flutter/material.dart';
import 'package:note_app/widget/app_bar_widget.dart';
import 'package:note_app/widget/list_view_note.dart';

class NoteScreenBody extends StatelessWidget {
  const NoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AppBarWidget(),
          Expanded(child: ListViewNote())
        ],
      ),
    );
  }
}
