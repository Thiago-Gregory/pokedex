import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;

  const MyText({
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //Create boxDecoration for the text
      //If it's related to pokemon type, the backgroundColor will be the respective type color. Otherwise, it'll be transparent
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const
        EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: this.textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
