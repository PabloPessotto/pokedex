class Stats {
  int? baseStat;
  int? effort;
  Stat? stat;

  Stats({this.baseStat, this.effort, this.stat});

  Map<String, dynamic> toJson() {
    return {
      "baseStat": baseStat,
      "effort": effort,
      "stat": stat,
    };
  }

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      baseStat: json["baseStat"],
      effort: json["effort"],
      stat: Stat.fromJson(json["stat"]),
    );
  }
}

class Stat {
  String? name;

  Stat({this.name});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      name: json["name"],
    );
  }
}
