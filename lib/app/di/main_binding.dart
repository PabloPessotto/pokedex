import 'package:get/get.dart';
import 'package:pokedex/data/datasource/remote/pokemon_remote_datasource.dart';
import 'package:pokedex/data/network/dio_factory.dart';
import 'package:pokedex/data/network/service_client/service_client.dart';
import 'package:pokedex/data/repository/pokemon_repository_impl.dart';
import 'package:pokedex/domain/repository/pokemon_repository.dart';
import 'package:pokedex/presentation/ui/viewmodels/initial_viewmodel.dart';

class MainBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut<DioFactory>(() => DioFactory());

    Get.lazyPut<InitialViewModel>(() => InitialViewModel());

    final dio = await Get.find<DioFactory>().getDio();
    Get.lazyPut<ServiceClientPokedex>(() => ServiceClientPokedex(dio), fenix: true);

    Get.lazyPut<PokemonRemoteDataSource>(
        () => PokemonRemoteDataSourceImplementer(Get.find<ServiceClientPokedex>()));

    Get.lazyPut<PokemonRepository>(
        () => PokemonRepositoryImpl(Get.find<PokemonRemoteDataSource>()));
  }
}
