import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';
import 'package:note_app/widget/custom_buttom.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class ShowModelSheetForm extends StatefulWidget {
  const ShowModelSheetForm({super.key});

  @override
  State<ShowModelSheetForm> createState() => _ShowModelSheetForm();
}

class _ShowModelSheetForm extends State<ShowModelSheetForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "Content ",
            maxLines: 4,
          ),
          ListViweColor(),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formattedCurrentDate =
                    DateFormat("dd-mm-yyyy").format(currentDate);
                NoteModel note = NoteModel(
                    title: title!,
                    subtitle: subTitle!,
                    date: formattedCurrentDate,
                    color: Colors.blue.value);
                context.read<AddNoteCubit>().addNote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
