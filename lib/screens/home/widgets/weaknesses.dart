import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/my_text.dart';

class Weaknesses extends StatelessWidget {
  final Pokemon pokemon;

  Weaknesses(
    this.pokemon,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fraquezas",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //Create each of weakness the pokemon have
            children: List.generate(
              this.pokemon.listOfWeakness.length, (index) =>
                MyText(
                  text: this.pokemon.listOfWeakness.elementAt(index).typeName,
                  textColor: Colors.white,
                  backgroundColor: this.pokemon.listOfWeakness.elementAt(index).typeColor
                )
            )
          )
        ],
      ),
    );
  }
}