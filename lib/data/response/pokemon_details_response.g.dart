// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailsResponse _$PokemonDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    PokemonDetailsResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      sprites: json['sprites'] == null
          ? null
          : SpritesResponse.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => MoveResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..stats = (json['stats'] as List<dynamic>?)
        ?.map((e) => StatsResponse.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$PokemonDetailsResponseToJson(
        PokemonDetailsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'sprites': instance.sprites,
      'types': instance.types,
      'moves': instance.moves,
      'stats': instance.stats,
    };
