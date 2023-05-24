import 'package:json_annotation/json_annotation.dart';

part 'sprites_response.g.dart';

@JsonSerializable()
class SpritesResponse {
  @JsonKey(name: 'front_default')
  final String frontDefault;

  SpritesResponse({required this.frontDefault});

  factory SpritesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpritesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SpritesResponseToJson(this);
}
