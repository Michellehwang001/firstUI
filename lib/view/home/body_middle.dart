import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class BodyMiddle extends StatefulWidget {
  ListItem _item;

  BodyMiddle(this._item);

  //print('---> '+_item.id);
  @override
  _BodyMiddleState createState() => _BodyMiddleState(_item);
}

class _BodyMiddleState extends State<BodyMiddle> {
  ListItem _item;

  _BodyMiddleState(this._item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(_item.title),
          leading: Image.network(_item.publication.logoUrl),
          subtitle: Text(
              '${_item.metadata.author.name} - ${_item.metadata.readTimeMinutes}min read'),
          trailing: Icon(Icons.bookmark_border),
        ),
        Divider(),
      ],
    );
  }
}
