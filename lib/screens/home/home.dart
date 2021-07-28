import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/models/pokemon_type.dart';
import 'package:pokedex/screens/home/widgets/details.dart';
import 'package:pokedex/screens/home/widgets/weaknesses.dart';
import 'package:pokedex/style.dart';

class Home extends StatelessWidget {
  final pokemon = Pokemon(
    photo: "assets/images/charmander.png",
    name: "Charmander", 
    id: 4, 
    description: "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
    height: 0.6, 
    weight: 8.5, 
    skill: "Chama", 
    listOfWeakness: [
      PokemonType(
        "Água",
        colorWaterType,
      ),
      PokemonType(
        "Terra",
        colorGroundType,
      ),
      PokemonType(
        "Rocha",
        colorRockType,
      ),
    ], 
    type: PokemonType(
      "Fogo",
      colorFireType,
    )
  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        leading: Image.asset("assets/images/logo.png"),
        //Create title joining the pokemon name and it's ID
        title: Text(
          "${this.pokemon.name} #${this.pokemon.id.toString().padLeft(3, '0')}"
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const
          EdgeInsets.symmetric(
            horizontal: 20
          ),
          child: Column(
            children: [
              //Create pokemon photo
              Padding(
                padding: const
                EdgeInsets.symmetric(
                  vertical: 30
                ),
                child: Image.asset(pokemon.photo),
              ),

              //Create pokemon description
              Text(pokemon.description),

              SizedBox(
                height: 20,
              ),

              //Create pokemon details
              Details(pokemon),

              SizedBox(
                height: 30,
              ),

              //Create pokemon list of weaknesses
              Weaknesses(pokemon),
            ],
          ),
        ),
      ),
    );
  }
}