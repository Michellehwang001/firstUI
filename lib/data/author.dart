class Author {
  String name;
  String url;

  Author({
      this.name, 
      this.url});

  Author.fromJson(dynamic json) {
    name = json["name"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["url"] = url;
    return map;
  }

}