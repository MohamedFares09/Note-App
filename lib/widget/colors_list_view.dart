import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: isActive
          ? CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 25,
            ),
    );
  }
}

class ListViweColor extends StatefulWidget {
  const ListViweColor({super.key});

  @override
  State<ListViweColor> createState() => _ListViweColorState();
}

class _ListViweColorState extends State<ListViweColor> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xffD7263D),
    Color(0xffF46036),
    Color(0xff2E294E),
    Color(0xff1B998B),
    Color(0xffC5D86D),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              );
            }),
      ),
    );
  }
}
