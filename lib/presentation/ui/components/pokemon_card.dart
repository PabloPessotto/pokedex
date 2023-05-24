import 'package:flutter/material.dart';
import 'package:pokedex/app/functions.dart';
import 'package:pokedex/presentation/resources/theme/color_manager.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.number,
      this.onTap})
      : super(key: key);
  final String name;
  final String image;
  final int number;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: ColorManager.white,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8, top: 4),
                child: Text(
                  "#${completeNumberWithZeros(number)}",
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: ColorManager.medium,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 44,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: ColorManager.background,
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ),
            Center(
              child: Image.network(
                image,
                height: 72,
                width: 72,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 10,
                    color: ColorManager.dark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
