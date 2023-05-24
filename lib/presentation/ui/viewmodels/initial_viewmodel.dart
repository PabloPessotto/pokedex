import 'dart:async';

import 'package:get/get.dart';
import 'package:pokedex/presentation/resources/routes/routes.dart';

class InitialViewModel extends GetxController {
  late Timer? _timer;

  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 50), _navigatorToList);
  }

  @override
  void onInit() {
    _startDelay();
    super.onInit();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void _navigatorToList() {
    Get.offNamedUntil(Routes.pokemonList, (route) => false);
  }
}
