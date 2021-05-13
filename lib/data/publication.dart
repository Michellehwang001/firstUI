class Publication {
  String logoUrl;
  String name;

  Publication({
      this.logoUrl, 
      this.name});

  Publication.fromJson(dynamic json) {
    logoUrl = json["logoUrl"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["logoUrl"] = logoUrl;
    map["name"] = name;
    return map;
  }

}