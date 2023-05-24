class PokemonContent {
  String? name;
  String? url;

  PokemonContent({this.name, this.url});

  factory PokemonContent.fromJson(Map<String, dynamic> json) {
    return PokemonContent(
      name: json["name"],
      url: json["url"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "url": url,
    };
  }
}
