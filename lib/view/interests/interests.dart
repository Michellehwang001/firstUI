import 'package:first_ui/view/drawer_main.dart';
import 'package:first_ui/view/interests/people.dart';
import 'package:first_ui/view/interests/publications.dart';
import 'package:first_ui/view/interests/topics.dart';
import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Topics',),
                Tab(text: 'People',),
                Tab(text: 'Publications',),
              ],
            ),
            title: Text('Jet News'),
          ),
          body: TabBarView(
            children: [
              Topics(),
              People(),
              Publications(),
            ],
          ),
          drawer: DrawerMain(),
        ),
    );
  }
}
