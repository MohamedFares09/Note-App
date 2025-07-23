import 'package:flutter/material.dart';
import 'package:note_app/widget/note_screen_body.dart';
import 'package:note_app/widget/show_model_bottom.dart';
class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const ShowModelBottom();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteScreenBody(),
    );
  }
}
