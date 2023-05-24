import 'package:pokedex/data/response/move/move_response.dart';
import 'package:pokedex/domain/model/move.dart';

extension MoveMapper on MoveResponse? {
  Move toDomain() {
    return Move(name: this?.name);
  }
}
