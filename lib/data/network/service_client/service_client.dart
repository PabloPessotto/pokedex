import 'package:dio/dio.dart';
import 'package:pokedex/app/constants.dart';
import 'package:pokedex/data/response/pokemon_details_response.dart';
import 'package:pokedex/data/response/pokemon_list_content_response.dart';
import 'package:retrofit/retrofit.dart';

part 'service_client.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ServiceClientPokedex {
  factory ServiceClientPokedex(Dio dio, {String? baseUrl}) = _ServiceClientPokedex;

  @GET('/pokemon')
  Future<PokemonListContentResponse> getListPokemon(
      @Query("offset") int offset, @Query("limit") int limit);

  @GET('/pokemon/{id}')
  Future<PokemonDetailsResponse> getPokemonDetails(@Path("id") int id);
}
