import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_state.dart';
import 'package:note_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInit());
  addNote(NoteModel note) async {
    var noteBox = Hive.box<NoteModel>('notes');
    await noteBox.add(note);
    emit(AddNoteSuccess());
  }
}
