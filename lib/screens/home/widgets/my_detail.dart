import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/widgets/my_text.dart';

class MyDetail extends StatelessWidget {
  final bool textIsAType;
  final String title;
  final String value;
  final Color backgroundColor;

  MyDetail({
    required this.textIsAType,
    required this.title,
    required this.value,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          //Create detail title
          Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(
            height: this.textIsAType ? 10 : 0,
          ),

          //Create detail text
          MyText(
            text: this.value,
            textColor: this.textIsAType ? Colors.white : Colors.black,
            backgroundColor: backgroundColor
          ),
        ],
      ),
    );
  }
}