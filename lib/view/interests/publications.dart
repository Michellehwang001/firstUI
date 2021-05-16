import 'package:first_ui/provider/interests_provider.dart';
import 'package:first_ui/view/interests/topics_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Publications extends StatelessWidget {
  const Publications({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InterestsProvider items = Provider.of<InterestsProvider>(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ListView(
        children: items.publicationsList.map((e) => TopicsList(e)).toList(),
      ),
    );
  }
}
