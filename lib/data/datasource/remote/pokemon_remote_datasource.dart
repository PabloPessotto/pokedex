import 'package:pokedex/data/network/service_client/service_client.dart';
import 'package:pokedex/data/response/pokemon_details_response.dart';
import 'package:pokedex/data/response/pokemon_list_content_response.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonListContentResponse> getPokemonList(int offset, int limit);
  Future<PokemonDetailsResponse> getPokemonById(int id);
}

class PokemonRemoteDataSourceImplementer implements PokemonRemoteDataSource {
  final ServiceClientPokedex _serviceClientPokedex;

  PokemonRemoteDataSourceImplementer(this._serviceClientPokedex);

  @override
  Future<PokemonListContentResponse> getPokemonList(int offset, int limit) async =>
      await _serviceClientPokedex.getListPokemon(offset, limit);

  @override
  Future<PokemonDetailsResponse> getPokemonById(int id) async =>
      await _serviceClientPokedex.getPokemonDetails(id);
}
