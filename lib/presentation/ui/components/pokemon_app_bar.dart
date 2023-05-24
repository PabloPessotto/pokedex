import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/presentation/resources/assets/assets_manager.dart';

class PokemonAppBar extends StatelessWidget {
  const PokemonAppBar(
      {Key? key, required this.pokemonName, required this.pokemonNumber})
      : super(key: key);
  final String pokemonName;
  final String pokemonNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 29, right: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: Get.back,
            child: SvgPicture.asset(
              AssetsManager.arrowBackAppBar,
              height: 21,
            ),
          ),
          Text(
            pokemonName,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text("#$pokemonNumber"),
        ],
      ),
    );
  }
}
