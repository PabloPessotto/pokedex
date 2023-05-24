import 'dart:convert';

import 'package:pokedex/domain/model/pokemon_content.dart';

class PokemonListContent {
  String? next;
  String? previous;
  List<PokemonContent>? results;

  PokemonListContent({this.next, this.previous, this.results});

  factory PokemonListContent.fromJson(Map<String, dynamic> json) {
    return PokemonListContent(
      next: json["next"],
      previous: json["previous"],
      results: json["results"] != null
          ? (json["results"] as List).map((e) => PokemonContent.fromJson(e)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "next": next,
      "previous": previous,
      "results": jsonEncode(results),
    };
  }
}
