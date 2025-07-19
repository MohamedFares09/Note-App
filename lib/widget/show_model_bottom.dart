import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class ShowModelBottom extends StatelessWidget {
  const ShowModelBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextFiled(
            hintText: "Title",
           
          ),
          
        ],
      ),
    );
  }
}
