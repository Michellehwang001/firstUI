import 'markups.dart';

class Paragraphs {
  List<dynamic> markups;
  String text;
  String type;

  Paragraphs({
      this.markups, 
      this.text, 
      this.type});

  Paragraphs.fromJson(dynamic json) {

    if (json["markups"] != null) {
      List<Markups> markups = [];
      json["markups"].forEach((v) {
        markups.add(Markups.fromJson(v));
      });
    }

    text = json["text"];
    type = json["type"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (markups != null) {
      map["markups"] = markups.map((v) => v.toJson()).toList();
    }
    map["text"] = text;
    map["type"] = type;
    return map;
  }

}