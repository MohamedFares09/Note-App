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
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hintText: "Content ",
            maxLines: 4,
          ),
          Spacer(),
          CustomButton()
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
