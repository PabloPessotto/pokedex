import 'package:get/get.dart';
import 'package:pokedex/domain/repository/pokemon_repository.dart';
import 'package:pokedex/domain/usecase/get_list_pokemon_usecase.dart';
import 'package:pokedex/presentation/ui/viewmodels/pokemon_list_viewmodel.dart';

class PokemonListBinding implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<GetListPokemonUseCase>()) {
      Get.lazyPut<GetListPokemonUseCase>(
        () => GetListPokemonUseCase(
          Get.find<PokemonRepository>(),
        ),
      );
      Get.lazyPut<PokemonListViewModel>(
        () => PokemonListViewModel(
          Get.find<GetListPokemonUseCase>(),
        ),
      );
    }
  }
}
