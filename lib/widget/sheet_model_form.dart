
import 'package:flutter/widgets.dart';
import 'package:note_app/widget/custom_buttom.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class ModelFormSheetModel extends StatefulWidget {
  const ModelFormSheetModel({super.key});

  @override
  State<ModelFormSheetModel> createState() => _ModelFormSheetModelState();
}

class _ModelFormSheetModelState extends State<ModelFormSheetModel> {
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
          Spacer(),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
