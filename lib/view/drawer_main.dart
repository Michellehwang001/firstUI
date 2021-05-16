import 'package:flutter/material.dart';

import 'interests/interests.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({Key key, ListView child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              decoration: BoxDecoration(
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Color(0xFFd0203a)),
            title: Text('Home', style: TextStyle(fontSize: 20),),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list_alt_sharp, color: Color(0xFFd0203a)),
            title: Text('Interests', style: TextStyle(fontSize: 20),),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Interests())
              );
            },
          ),
        ],
      ),
    );
  }
}
