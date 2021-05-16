import 'package:first_ui/provider/list_provider.dart';
import 'package:first_ui/view/home/body_bottom.dart';
import 'package:first_ui/view/home/body_middle.dart';
import 'package:first_ui/view/home/body_slider.dart';
import 'package:first_ui/view/home/body_top.dart';
import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyList extends StatelessWidget {
  List<ListItem> listItems = [];

  @override
  Widget build(BuildContext context) {
// Widget List initialized
    List<Widget> bodyList = [];

// provider get data
    ListProvider items = Provider.of<ListProvider>(context);

    if (items.isDone == true) {
// Json 데이터로 listItems
      listItems = items.listItems;
    }

// Top 이미지부분
      bodyList.add(BodyTop(listItems[3]));
// ListTile
      listItems
          .where((e) => e.id == 'dc523f0ed25c' || e.id == '7446d8dfd7dc')
          .map((e) => bodyList.add(BodyMiddle(e)))
          .toList();
// Carousel Slider
      bodyList.add(BodySlider());
// Last ListTile
      listItems
          .where((e) =>
              e.id == 'ac552dcc1741' ||
              e.id == '84eb677660d9' ||
              e.id == '55db18283aca')
          .map((e) => bodyList.add(BodyBottom(e)))
          .toList();

    //return bodyList;
  }
}
