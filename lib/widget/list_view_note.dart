import 'package:flutter/material.dart';
import 'package:note_app/widget/card_item.dart';


class ListViewNote extends StatelessWidget {
  const ListViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context , index) {
      return CardItem();
    });
  }
}
