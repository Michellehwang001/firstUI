class Markups {
  int end;
  int start;
  String type;
  String href;

  Markups({this.end, this.start, this.type, this.href});

  Markups.fromJson(Map<String, dynamic> json) {
    end = json['end'];
    start = json['start'];
    type = json['type'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['end'] = this.end;
    data['start'] = this.start;
    data['type'] = this.type;
    data['href'] = this.href;
    return data;
  }
}