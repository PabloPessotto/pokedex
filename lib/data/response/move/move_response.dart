import 'package:json_annotation/json_annotation.dart';

part 'move_response.g.dart';

@JsonSerializable()
class MoveResponse {
  @JsonKey(name: "name")
  String? name;

  MoveResponse({this.name});
  factory MoveResponse.fromJson(Map<String, dynamic> json) =>
      _$MoveResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MoveResponseToJson(this);
}
