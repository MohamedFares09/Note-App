import 'package:flutter/material.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_state.dart';
import 'package:note_app/widget/show_model_sheet_form.dart';

class ShowModelBottom extends StatelessWidget {
  const ShowModelBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocListener<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            context.read<NoteCubit>().getNote();
            Navigator.pop(context);
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShowModelSheetForm(),
        ),
      ),
    );
  }
}
