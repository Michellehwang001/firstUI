import 'results.dart';

class ListItems {
  List<Results> results;

  ListItems({
      this.results});

  ListItems.fromJson(dynamic json) {
    if (json["results"] != null) {
      results = [];
      json["results"].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (results != null) {
      map["results"] = results.map((v) => v.toJson()).toList();
    }
    return map;
  }

}