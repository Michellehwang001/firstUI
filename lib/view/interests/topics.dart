import 'package:first_ui/provider/interests_provider.dart';
import 'package:first_ui/view/interests/topics_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Topics extends StatelessWidget {
  const Topics({Key key}) : super(key: key);


  // 토픽 목록의 ListView
  @override
  Widget build(BuildContext context) {
    InterestsProvider items = Provider.of<InterestsProvider>(context);
    List<Widget> makeWidget = [];

    makeWidget.add(topTopic('Android'));
    items.topicLists.where((e) => (e.category == 'Android')).map((e) => makeWidget.add(TopicsList(e))).toList();
    makeWidget.add(topTopic('Programming'));
    items.topicLists.where((e) => (e.category == 'Programming')).map((e) => makeWidget.add(TopicsList(e))).toList();
    makeWidget.add(topTopic('Technology'));
    items.topicLists.where((e) => (e.category == 'Technology')).map((e) => makeWidget.add(TopicsList(e))).toList();

    return ListView(
      children: makeWidget,
    );
  }

  Widget topTopic(String category) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Text(category, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
