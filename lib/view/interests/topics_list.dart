import 'package:first_ui/model/model_list.dart';
import 'package:flutter/material.dart';

class TopicsList extends StatefulWidget {
  ModelList list;
  TopicsList(this.list);

  @override
  _TopicsListState createState() => _TopicsListState();
}

class _TopicsListState extends State<TopicsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading:
          Image.asset('lib/images/topic_img.png', width: 100, height: 100),
          title: Text(
            widget.list.title,
            style: TextStyle(fontSize: 20),
          ),
          trailing: IconButton(
              icon: Icon(
                widget.list.checked == false ? Icons.add_circle_outline_sharp : Icons.check_circle,
                color: Color(0xFFd0203a),
                size: 35,
              ),
              onPressed: () {
                setState(() {
                  widget.list.checked == false ? widget.list.checked = true : widget.list.checked = false;
                });
              }),
        ),
        Divider(thickness: 1, indent: 90.0),
      ],
    );
  }
}
