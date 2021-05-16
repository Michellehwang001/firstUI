import 'package:first_ui/main.dart';
import 'package:first_ui/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'interests/interests.dart';

class DrawerMain extends StatefulWidget {
  const DrawerMain({Key key, ListView child}) : super(key: key);

  @override
  _DrawerMainState createState() => _DrawerMainState();
}

class _DrawerMainState extends State<DrawerMain> {
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    ListProvider items = Provider.of<ListProvider>(context);
    items.listItems.map((e) => names.add(e.metadata.author.name)).toList();

    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            height: 130,
            child: DrawerHeader(
              child: Row(
                children: [
                  Icon(Icons.mood_outlined, color: Color(0xFFd0203a)),
                  SizedBox(width: 10,),
                  Text('Jetnews', style: TextStyle(fontSize: 23, ),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color(0xFFd0203a)),
            title: Text('Home', style: TextStyle(fontSize: 20),),
            onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomePage())
                );
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt_sharp, color: Color(0xFFd0203a)),
            title: Text('Interests', style: TextStyle(fontSize: 20),),
            onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Interests(names))
                );
            },
          ),
        ],
      ),
    );
  }
}
