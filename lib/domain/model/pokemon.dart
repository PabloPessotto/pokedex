import 'dart:convert';

import 'package:pokedex/domain/model/move.dart';
import 'package:pokedex/domain/model/stats.dart';

import 'type.dart';

class Pokemon {
  String? name;
  String? image;
  int? id;
  List<Type>? types;
  List<Move>? moves;
  List<Stats>? stats;

  Pokemon({this.name, this.image, this.id, this.types, this.moves, this.stats});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "image": image,
      "id": id,
      "types": jsonEncode(types),
      "moves": jsonEncode(moves),
      "stats": jsonEncode(stats),
    };
  }

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json["name"],
      image: json["image"],
      id: int.parse(json["id"]),
      types: json["types"] != null
          ? (json["types"] as List).map((e) => Type.fromJson(e)).toList()
          : [],
      moves: json["moves"] != null
          ? (json["moves"] as List).map((e) => Move.fromJson(e)).toList()
          : [],
      stats: json["stats"] != null
          ? (json["stats"] as List).map((e) => Stats.fromJson(e)).toList()
          : [],
    );
  }
//
}
