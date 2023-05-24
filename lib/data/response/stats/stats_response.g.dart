// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatsResponse _$StatsResponseFromJson(Map<String, dynamic> json) =>
    StatsResponse(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      stat: json['stat'] == null
          ? null
          : StatResponse.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsResponseToJson(StatsResponse instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

StatResponse _$StatResponseFromJson(Map<String, dynamic> json) => StatResponse(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$StatResponseToJson(StatResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
