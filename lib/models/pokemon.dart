import 'package:pokedex/models/pokemon_type.dart';

class Pokemon {
  String photo;
  String name;
  int id;
  String description;
  double height;
  double weight;
  String skill;
  List<PokemonType> listOfWeakness;
  PokemonType type;

  Pokemon({
    required this.photo,
    required this.name,
    required this.id,
    required this.description,
    required this.height,
    required this.weight,
    required this.skill,
    required this.listOfWeakness,
    //required this.type,
    required this.type,
  });
}
