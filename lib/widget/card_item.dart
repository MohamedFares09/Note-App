import 'package:flutter/material.dart';
import 'package:note_app/screen/edit_note_screen.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteScreen();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 8),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    "Flutter Tips",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  subtitle: Text(
                    "Build your Career With Thrawat Samy",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    "May 21 , 2022",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
