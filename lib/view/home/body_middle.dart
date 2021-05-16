import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyMiddle extends StatefulWidget {
  ListItem _item;

  BodyMiddle(this._item);

  @override
  _BodyMiddleState createState() => _BodyMiddleState(_item);
}

class _BodyMiddleState extends State<BodyMiddle> {
  ListItem _item;
  bool isCheck = false;

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
          trailing: IconButton(
              icon: (isCheck == false)
                  ? Icon(
                      Icons.bookmark_border,
                      size: 35,
                    )
                  : Icon(
                      Icons.bookmark,
                      size: 35,
                    ),
              onPressed: () {
                setState(() {
                  if(isCheck == true) {
                    isCheck = false;
                  } else {
                    isCheck = true;
                  }
                });
              }
          ),
        ),
        Divider(),
      ],
    );
  }
}
