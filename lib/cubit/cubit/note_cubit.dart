import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubit/cubit/note_state.dart';
import 'package:note_app/model/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInit());

  getNote() {
    var noteBox = Hive.box<NoteModel>("notes");
    List<NoteModel> notes = noteBox.values.toList();
    emit(NoteSuccess(notes: notes));
  }
}
