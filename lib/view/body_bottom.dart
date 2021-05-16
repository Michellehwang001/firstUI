import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyBottom extends StatefulWidget {
  ListItem _item;

  BodyBottom(this._item);

  //print('---> '+_item.id);
  @override
  _BodyBottomState createState() => _BodyBottomState(_item);
}

class _BodyBottomState extends State<BodyBottom> {
  ListItem _item;

  _BodyBottomState(this._item);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 8, 0),
          child: Text('BASED ON YOUR HISTORY',
              style: TextStyle(color: Color(0xFF808588))),
        ),
        ListTile(
          leading: Image.network(_item.publication.logoUrl),
          title: Text(_item.title),
          subtitle: Text(
              '${_item.metadata.author.name} - ${_item.metadata.readTimeMinutes}min read'),
          isThreeLine: true,
          trailing: Icon(Icons.more_vert),
        ),
        Divider(),
      ],
    );
  }
}
