import 'package:flutter/material.dart';
import 'package:note_app/widget/app_bar_widget.dart';

class EditNoteScreenBody extends StatelessWidget {
  const EditNoteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AppBarWidget(icon: Icons.check, title: "Edit Note")
        ],
      ),
    );
  }
}
