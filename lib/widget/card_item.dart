import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/screen/edit_note_screen.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 8),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    noteModel.title,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  subtitle: Text(
                    noteModel.subtitle,
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        noteModel.delete();
                        context.read<NoteCubit>().getNote();
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    noteModel.date,
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
