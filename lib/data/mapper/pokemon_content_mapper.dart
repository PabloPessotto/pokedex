import 'package:pokedex/data/response/pokemon_content_response.dart';
import 'package:pokedex/domain/model/pokemon_content.dart';

extension PokemonContentMapper on PokemonContentResponse? {
  PokemonContent toDomain() {
    return PokemonContent(name: this?.name, url: this?.url);
  }
}
