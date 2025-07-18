import 'package:flutter/material.dart';
import 'package:note_app/widget/note_screen_body.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteScreenBody(),
    );
  }
}