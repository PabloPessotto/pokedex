import 'package:json_annotation/json_annotation.dart';

part 'stats_response.g.dart';

@JsonSerializable()
class StatsResponse {
  @JsonKey(name: "base_stat")
  int? baseStat;
  @JsonKey(name: "effort")
  int? effort;
  @JsonKey(name: "stat")
  StatResponse? stat;

  StatsResponse({this.baseStat, this.effort, this.stat});
  factory StatsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$StatsResponseToJson(this);
}

@JsonSerializable()
class StatResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;

  StatResponse({this.name, this.url});
  factory StatResponse.fromJson(Map<String, dynamic> json) =>
      _$StatResponseFromJson(json);
  Map<String, dynamic> toJson() => _$StatResponseToJson(this);
}
