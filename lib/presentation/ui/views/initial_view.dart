import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/presentation/resources/theme/color_manager.dart';
import 'package:pokedex/presentation/ui/viewmodels/initial_viewmodel.dart';

class InitialView extends StatelessWidget {
  InitialView({Key? key}) : super(key: key);

  final InitialViewModel _viewModel = Get.find<InitialViewModel>();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.primary,
    );
  }
}
