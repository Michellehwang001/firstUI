import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';

class BodyTop extends StatelessWidget {
  ListItem _item;
  BodyTop(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 8.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Top stories for you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Image.network(
                _item.publication.logoUrl,
                width: 400,
                height: 200,
              ),
              Text(_item.title,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text(_item.metadata.author.name, style: TextStyle(fontSize: 18)),
              Text(
                '${_item.metadata.date} - ${_item.metadata.readTimeMinutes} min read',
                style: TextStyle(fontSize: 20, color: Color(0xFF808588)),
              ),
              Divider(),
            ],
          ),
        ));
  }
}
