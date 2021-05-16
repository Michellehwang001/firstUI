import 'package:first_ui/provider/interests_provider.dart';
import 'package:first_ui/provider/list_provider.dart';
import 'package:first_ui/view/drawer_main.dart';
import 'package:first_ui/view/interests/people.dart';
import 'package:first_ui/view/interests/publications.dart';
import 'package:first_ui/view/interests/topics.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Interests extends StatefulWidget {
  List<String> names = [];

  Interests(this.names);

  @override
  _InterestsState createState() => _InterestsState(names);
}

class _InterestsState extends State<Interests> {
  List<String> names = [];
  _InterestsState(this.names);

  @override
  Widget build(BuildContext context) {
    // 1번만 해야 하는데!!
    Provider.of<InterestsProvider>(context, listen: false).fetchData(names);

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
