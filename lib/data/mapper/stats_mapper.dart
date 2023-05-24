import 'package:pokedex/data/response/stats/stats_response.dart';
import 'package:pokedex/domain/model/stats.dart';

extension StatsMapper on StatsResponse? {
  Stats toDomain() {
    return Stats(
      baseStat: this?.baseStat,
      effort: this?.effort,
      stat: this?.stat.toDomain(),
    );
  }
}

extension StatMapper on StatResponse? {
  Stat toDomain() {
    return Stat(name: this?.name);
  }
}
