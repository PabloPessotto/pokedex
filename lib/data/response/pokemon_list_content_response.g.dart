// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_content_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListContentResponse _$PokemonListContentResponseFromJson(
        Map<String, dynamic> json) =>
    PokemonListContentResponse(
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => PokemonContentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListContentResponseToJson(
        PokemonListContentResponse instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
