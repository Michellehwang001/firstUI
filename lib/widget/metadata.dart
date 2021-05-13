import 'author.dart';

class Metadata {
  Author author;
  String date;
  int readTimeMinutes;

  Metadata({
      this.author, 
      this.date, 
      this.readTimeMinutes});

  Metadata.fromJson(dynamic json) {
    author = json["author"] != null ? Author.fromJson(json["author"]) : null;
    date = json["date"];
    readTimeMinutes = json["readTimeMinutes"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (author != null) {
      map["author"] = author.toJson();
    }
    map["date"] = date;
    map["readTimeMinutes"] = readTimeMinutes;
    return map;
  }

}