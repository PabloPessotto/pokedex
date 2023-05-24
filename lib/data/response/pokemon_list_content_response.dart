import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/data/response/pokemon_content_response.dart';

part 'pokemon_list_content_response.g.dart';

@JsonSerializable()
class PokemonListContentResponse {
  @JsonKey(name: "next")
  String? next;
  @JsonKey(name: "previous")
  String? previous;
  @JsonKey(name: "results")
  List<PokemonContentResponse>? results;

  PokemonListContentResponse({this.next, this.previous, this.results});

  factory PokemonListContentResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListContentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonListContentResponseToJson(this);
}
