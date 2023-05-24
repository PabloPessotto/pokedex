import 'package:pokedex/app/constants.dart';
import 'package:pokedex/app/functions.dart';
import 'package:pokedex/data/datasource/remote/pokemon_remote_datasource.dart';
import 'package:pokedex/data/mapper/move_mapper.dart';
import 'package:pokedex/data/mapper/pokemon_list_content_mapper.dart';
import 'package:pokedex/data/mapper/stats_mapper.dart';
import 'package:pokedex/data/mapper/type_mapper.dart';
import 'package:pokedex/domain/model/pokemon.dart';
import 'package:pokedex/domain/model/pokemon_content.dart';

import '../../domain/repository/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource _pokemonRemoteDataSource;

  PokemonRepositoryImpl(this._pokemonRemoteDataSource);

  @override
  Future<List<Pokemon>> getPokemonList(int offset) async {
    final response =
        await _pokemonRemoteDataSource.getPokemonList(offset, Constants.limit);
    final result = response.toDomain();
    final pokemonList = <Pokemon>[];
    for (var res in result.results ?? <PokemonContent>[]) {
      final fetch = await _pokemonRemoteDataSource.getPokemonById(
        int.parse(extractValueFromUrl(res.url ?? '')),
      );

      pokemonList.add(
        Pokemon(
          id: fetch.id,
          name: res.name,
          image: fetch.sprites?.frontDefault,
          moves: fetch.moves?.map((e) => e.toDomain()).toList(),
          stats: fetch.stats?.map((e) => e.toDomain()).toList(),
          types: fetch.types?.map((e) => e.toDomain()).toList(),
        ),
      );
      print('fetch - ${fetch.toJson()}');
      print('sprites - ${fetch.sprites?.frontDefault ?? ''}');
    }
    return pokemonList;
  }
}
