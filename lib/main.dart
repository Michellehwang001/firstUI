import 'package:first_ui/provider/list_provider.dart';
import 'package:first_ui/widget/list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ListProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFFd0203a),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListItem> listItems = [];

  @override
  void initState() {
    super.initState();
    Provider.of<ListProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    ListProvider items = Provider.of<ListProvider>(context);
    //listProvider.listItems;
    if (items.isDone == true) {
      listItems = items.listItems;
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.apps_rounded),
        title: Text('Jet News'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 8.0, 0),
                child: Text(
            'Top stories for you',
            style: TextStyle(fontSize: 17),
          ),
              )),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(8.0),
              itemCount: listItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //height: 50,
                  child: Column(
                    children: [
                      // 총 4가지 list Type있음
                      ListTile(
                        title: Text(
                          listItems[index].title,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        leading:
                            Image.network(listItems[index].publication.logoUrl),
                        subtitle: Text(listItems[index].metadata.author.name +
                            ' - ' +
                            listItems[index]
                                .metadata
                                .readTimeMinutes
                                .toString() +
                            'min read'),
                        trailing: Icon(Icons.bookmark_border),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
