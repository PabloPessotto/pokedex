import 'package:get/get.dart';
import 'package:pokedex/domain/model/pokemon.dart';
import 'package:pokedex/domain/usecase/get_list_pokemon_usecase.dart';

class PokemonListViewModel extends GetxController {
  final GetListPokemonUseCase _getListPokemonUseCase;

  PokemonListViewModel(this._getListPokemonUseCase);

  int _offset = 0;
  RxList<Pokemon> pokemonList = <Pokemon>[].obs;

  void _bindPokemons() async {
    final listPokemons = await _getListPokemonUseCase.execute(_offset);
    pokemonList.addAll(listPokemons);
    print('listPokemons - ${listPokemons}');
    for (var pokemon in listPokemons) {
      print('Pokemon - ${pokemon.toJson()}');
    }
  }

  @override
  void onInit() {
    _bindPokemons();
    super.onInit();
  }
}
