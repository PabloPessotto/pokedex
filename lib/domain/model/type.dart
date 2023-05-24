class Type {
  String? name;

  Type({this.name});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
    };
  }

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      name: json["name"],
    );
  }
}
