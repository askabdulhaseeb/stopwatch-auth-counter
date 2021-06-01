import 'package:flutter/material.dart';

class CustomizeButton extends StatelessWidget {
  final String title;
  final VoidCallback onClick;
  const CustomizeButton({required this.title, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        onClick();
      },
      child: Container(
        height: 50,
        width: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.5),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
