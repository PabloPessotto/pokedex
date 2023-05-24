class Move {
  String? name;

  Move({this.name});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      name: json["name"],
    );
  }
}
