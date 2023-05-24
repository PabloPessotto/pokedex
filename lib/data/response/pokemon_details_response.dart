import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/data/response/move/move_response.dart';
import 'package:pokedex/data/response/sprites/sprites_response.dart';
import 'package:pokedex/data/response/stats/stats_response.dart';

import 'type/type_response.dart';

part 'pokemon_details_response.g.dart';

@JsonSerializable()
class PokemonDetailsResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "height")
  int? height;
  @JsonKey(name: "weight")
  int? weight;
  @JsonKey(name: "sprites")
  SpritesResponse? sprites;
  @JsonKey(name: "types")
  List<TypeResponse>? types;
  @JsonKey(name: "moves")
  List<MoveResponse>? moves;
  @JsonKey(name: "stats")
  List<StatsResponse>? stats;

  PokemonDetailsResponse({
    this.id,
    this.name,
    this.height,
    this.weight,
    this.sprites,
    this.types,
    this.moves,
  });

  factory PokemonDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonDetailsResponseToJson(this);
}
