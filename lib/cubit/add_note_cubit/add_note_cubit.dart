import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_state.dart';
import 'package:note_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  Color color = Color(0xffD7263D);
  addNote(NoteModel note) async {
    note.color = color.value;
    var noteBox = Hive.box<NoteModel>('notes');
    await noteBox.add(note);
    emit(AddNoteSuccess());
  }
}
