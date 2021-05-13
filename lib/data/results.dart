import 'metadata.dart';
import 'paragraphs.dart';
import 'publication.dart';

class Results {
  String id;
  int imageId;
  int imageThumbId;
  Metadata metadata;
  List<Paragraphs> paragraphs;
  Publication publication;
  String subtitle;
  String title;
  String url;

  Results({
      this.id, 
      this.imageId, 
      this.imageThumbId, 
      this.metadata, 
      this.paragraphs, 
      this.publication, 
      this.subtitle, 
      this.title, 
      this.url});

  Results.fromJson(dynamic json) {
    id = json["id"];
    imageId = json["imageId"];
    imageThumbId = json["imageThumbId"];
    metadata = json["metadata"] != null ? Metadata.fromJson(json["metadata"]) : null;
    if (json["paragraphs"] != null) {
      paragraphs = [];
      json["paragraphs"].forEach((v) {
        paragraphs.add(Paragraphs.fromJson(v));
      });
    }
    publication = json["publication"] != null ? Publication.fromJson(json["publication"]) : null;
    subtitle = json["subtitle"];
    title = json["title"];
    url = json["url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["imageId"] = imageId;
    map["imageThumbId"] = imageThumbId;
    if (metadata != null) {
      map["metadata"] = metadata.toJson();
    }
    if (paragraphs != null) {
      map["paragraphs"] = paragraphs.map((v) => v.toJson()).toList();
    }
    if (publication != null) {
      map["publication"] = publication.toJson();
    }
    map["subtitle"] = subtitle;
    map["title"] = title;
    map["url"] = url;
    return map;
  }

}