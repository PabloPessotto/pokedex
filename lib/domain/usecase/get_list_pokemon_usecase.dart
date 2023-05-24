import 'package:pokedex/domain/model/pokemon.dart';
import 'package:pokedex/domain/repository/pokemon_repository.dart';

class GetListPokemonUseCase {
  final PokemonRepository _pokemonRepository;

  GetListPokemonUseCase(this._pokemonRepository);

  Future<List<Pokemon>> execute(int offset) async =>
      _pokemonRepository.getPokemonList(offset);
}
