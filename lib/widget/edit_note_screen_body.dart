import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/cubit/note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/app_bar_widget.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class EditNoteScreenBody extends StatefulWidget {
  const EditNoteScreenBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteScreenBody> createState() => _EditNoteScreenBodyState();
}

class _EditNoteScreenBodyState extends State<EditNoteScreenBody> {
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AppBarWidget(
            icon: Icons.check,
            title: "Edit Note",
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subTitle ?? widget.note.subtitle;
              widget.note.save();
              Navigator.pop(context);
              context.read<NoteCubit>().getNote();
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFiled(
              hintText: "title",
              onChanged: (value) {
                title = value;
              }),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: "content",
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
