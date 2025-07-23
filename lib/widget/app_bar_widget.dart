import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.icon, required this.title , this.onPressed} );
  final String title;
  final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        Spacer(),
        IconWidget(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icon ,  this.onPressed});
  final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
