import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/my_detail.dart';

import 'package:pokedex/style.dart';

class Details extends StatelessWidget {
  final Pokemon pokemon;

  Details(
    this.pokemon,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorDetailsBackground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //Create Pokemon height
              MyDetail(
                textIsAType: false,
                title: "Altura",
                value: "${this.pokemon.height} m",
                backgroundColor: Colors.transparent,
              ),

              //Create Pokemon type sending the pokemon type name and it's color
              MyDetail(
                textIsAType: true,
                title: "Tipo",
                value: this.pokemon.type.typeName,
                backgroundColor: this.pokemon.type.typeColor,
              ),
            ],
          ),
          Column(
            children: [
              //Create Pokemon weight
              MyDetail(
                textIsAType: false,
                title: "Peso",
                value: "${this.pokemon.weight} kg",
                backgroundColor: Colors.transparent,
              ),

              //Create Pokemon skill
              MyDetail(
                textIsAType: false,
                title: "Habilidade",
                value: this.pokemon.skill,
                backgroundColor: Colors.transparent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
