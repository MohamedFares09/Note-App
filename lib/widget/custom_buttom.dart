import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
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
      ),
    );
  }
}
