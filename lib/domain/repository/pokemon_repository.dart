import 'package:pokedex/domain/model/pokemon.dart';

abstract interface class PokemonRepository {
  Future<List<Pokemon>> getPokemonList(int offset);
}
