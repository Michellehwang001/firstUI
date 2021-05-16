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
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
    );
  }
}
