import 'package:get/get.dart';
import 'package:pokedex/app/di/pokemon_list_binding.dart';
import 'package:pokedex/presentation/resources/routes/routes.dart';
import 'package:pokedex/presentation/ui/views/initial_view.dart';
import 'package:pokedex/presentation/ui/views/pokemon_list_view.dart';

import '../../ui/views/pokemon_details_view.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: Routes.initial, page: () => InitialView()),
    GetPage(
      name: Routes.pokemonList,
      page: () => PokemonListView(),
      binding: PokemonListBinding(),
    ),
    GetPage(
      name: Routes.pokemonDetails,
      page: () => PokemonDetailsView(),
    ),
  ];
}
