import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/di/main_binding.dart';
import 'package:pokedex/presentation/resources/routes/app_routes.dart';
import 'package:pokedex/presentation/resources/routes/routes.dart';

class PokedexApp extends StatelessWidget {
  const PokedexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pokedex",
      getPages: AppRoutes.pages,
      initialRoute: Routes.initial,
      initialBinding: MainBinding(),
    );
  }
}
