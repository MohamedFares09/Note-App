import 'package:flutter/material.dart';
import 'package:note_app/widget/edit_note_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteScreenBody(),
    );
  }
}