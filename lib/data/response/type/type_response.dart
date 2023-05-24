import 'package:json_annotation/json_annotation.dart';

part 'type_response.g.dart';

@JsonSerializable()
class TypeResponse {
  @JsonKey(name: 'name')
  String? name;

  TypeResponse({this.name});

  factory TypeResponse.fromJson(Map<String, dynamic> json) =>
      _$TypeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TypeResponseToJson(this);
}
