import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key ,required this.icon , required this.title});
  final String title;
  final IconData icon; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        IconWidget(icon: icon,)
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Icon(icon),
    );
  }
}
