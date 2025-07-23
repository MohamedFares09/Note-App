import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:note_app/cubit/cubit/note_state.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/card_item.dart';

class ListViewNote extends StatelessWidget {
  const ListViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        if (state is NoteLoading) {
          return CircularProgressIndicator();
        } else if (state is NoteSuccess) {
          List<NoteModel> note = state.notes;
          return ListView.builder(
              itemCount: note.length,
              itemBuilder: (context, index) {
                return CardItem(
                  noteModel: note[index],
                );
              });
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
