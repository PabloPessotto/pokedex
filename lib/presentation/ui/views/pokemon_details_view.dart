import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/presentation/resources/theme/color_manager.dart';
import 'package:pokedex/presentation/ui/components/pokemon_app_bar.dart';

import '../../resources/assets/assets_manager.dart';

class PokemonDetailsView extends StatelessWidget {
  PokemonDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.light,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                child: Container(
                  height: constraints.maxHeight,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 8,
                        right: 9,
                        child: SvgPicture.asset(
                          AssetsManager.pokeball,
                          height: 208,
                          width: 208,
                          theme: SvgTheme(
                            currentColor: Colors.transparent,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: (Get.height - 305),
                          width: double.maxFinite,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            margin: const EdgeInsets.all(4),
                            child: Column(
                              children: [],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 80,
                        right: 80,
                        left: 80,
                        child: Image.asset(
                          AssetsManager.pokemon,
                          height: 200,
                          width: 200,
                        ),
                      ),
                      PokemonAppBar(
                        pokemonName: "Pokemon",
                        pokemonNumber: "999",
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
