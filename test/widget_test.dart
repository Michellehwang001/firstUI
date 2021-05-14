// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:first_ui/widget/list_item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  test('http 통신 테스트', () async {
    var uri = Uri.parse(
        'https://michellehwang001.github.io/study_html_css/javascript/post.json');
    var response = await http.get(uri);
    expect(response.statusCode, 200);

    Iterable l = json.decode(response.body);
    List<ListItem> listItems = List<ListItem>.from(l.map((item) => ListItem.fromJson(item)));
    expect(listItems[0].publication.logoUrl, 'https://cdn-images-1.medium.com/max/258/1*u7oZc2_5mrkcFaxkXEyfYA@2x.png');
  });
}
