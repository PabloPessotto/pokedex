import 'package:pokedex/data/response/type/type_response.dart';
import 'package:pokedex/domain/model/type.dart';

extension TypeMapper on TypeResponse? {
  Type toDomain() {
    return Type(name: this?.name);
  }
}
