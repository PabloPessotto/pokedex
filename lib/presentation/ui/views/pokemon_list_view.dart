import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/presentation/resources/assets/assets_manager.dart';
import 'package:pokedex/presentation/resources/routes/routes.dart';
import 'package:pokedex/presentation/resources/theme/color_manager.dart';
import 'package:pokedex/presentation/ui/components/pokemon_card.dart';
import 'package:pokedex/presentation/ui/viewmodels/pokemon_list_viewmodel.dart';

class PokemonListView extends StatelessWidget {
  PokemonListView({Key? key}) : super(key: key);

  final PokemonListViewModel _viewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.12, bottom: 24),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AssetsManager.pokeball,
                    height: 24,
                    color: ColorManager.white,
                  ),
                  const SizedBox(width: 16.12),
                  const Text(
                    "Pokédex",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                color: ColorManager.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Obx(() {
                  if (_viewModel.pokemonList.isEmpty) {
                    return const Center(
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: CircularProgressIndicator(
                          color: ColorManager.primary,
                        ),
                      ),
                    );
                  }
                  return GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                    children: _viewModel.pokemonList
                        .map(
                          (pokemon) => PokemonCard(
                            name: pokemon.name ?? 'Pokémon name',
                            image: pokemon.image ?? '',
                            number: pokemon.id ?? 0,
                            onTap: () {
                              Get.toNamed(Routes.pokemonDetails);
                            },
                          ),
                        )
                        .toList(),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
