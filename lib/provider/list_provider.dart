import 'dart:convert';
import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListProvider with ChangeNotifier {
  List<ListItem> _listItems = [];
  bool _isDone = false;

  List<ListItem> get listItems => _listItems;
  bool get isDone => _isDone;

  Future<List> _fetchData() async {
    var uri = Uri.parse('https://michellehwang001.github.io/study_html_css/javascript/post.json');
    var response = await http.get(uri);

    Iterable l = json.decode(response.body);
    List<ListItem> listItems = List<ListItem>.from(l.map((item) => ListItem.fromJson(item)));

    return listItems;
  }

  void fetchData() {
    _fetchData().then((items) {
      _listItems = items;
      _isDone = true;

      notifyListeners();
    });
  }

}