import 'package:pokedex/data/mapper/pokemon_content_mapper.dart';
import 'package:pokedex/data/response/pokemon_list_content_response.dart';
import 'package:pokedex/domain/model/pokemon_list_content.dart';

extension PokemonListContentMapper on PokemonListContentResponse? {
  PokemonListContent toDomain() {
    return PokemonListContent(
      next: this?.next,
      previous: this?.previous,
      results: this?.results?.map((e) => e.toDomain()).toList(),
    );
  }
}
