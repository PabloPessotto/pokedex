import 'package:json_annotation/json_annotation.dart';

part 'pokemon_content_response.g.dart';

@JsonSerializable()
class PokemonContentResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;

  PokemonContentResponse({this.name, this.url});

  factory PokemonContentResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonContentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonContentResponseToJson(this);
}
