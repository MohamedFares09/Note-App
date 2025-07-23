import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/edit_note_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteScreenBody(
        note: noteModel,
      ),
    );
  }
}