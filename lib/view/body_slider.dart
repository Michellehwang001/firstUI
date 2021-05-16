import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_ui/provider/list_provider.dart';
import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodySlider extends StatelessWidget {
  const BodySlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ListProvider items = Provider.of<ListProvider>(context);

    return CarouselSlider(
      items: items.listItems.map((e) => MakeCardSlider(e, context)).toList(),
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        initialPage: 2,
        autoPlay: true,
        height: 413,
      ),
    );
  }

  Widget MakeCardSlider(ListItem item, BuildContext context) {
    // Slider title
    String _title = '';

    if (item.title.length > 40) {
      _title = '${item.title.substring(0, 40)}..';
    } else {
      _title = item.title;
    }

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            item.publication.logoUrl,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$_title',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                Text(
                  item.metadata.author.name,
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                    '${item.metadata.date} - ${item.metadata.readTimeMinutes}min read',
                    style: TextStyle(color: Color(0xFF808588))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
