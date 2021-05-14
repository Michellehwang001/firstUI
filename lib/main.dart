import 'package:first_ui/provider/list_provider.dart';
import 'package:first_ui/view/body_middle.dart';
import 'package:first_ui/view/body_top.dart';
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
    // Widget List initialized
    List<Widget> bodyList = [];

    ListProvider items = Provider.of<ListProvider>(context);
    if (items.isDone == true) {
      listItems = items.listItems;

      // Top 이미지부분
      bodyList.add(BodyTop(listItems[3]));
      // ListTile
      listItems
          .where((e) => e.id == 'dc523f0ed25c' || e.id == '7446d8dfd7dc')
          .map((e) => bodyList.add(BodyMiddle(e)))
          .toList();
      //
    }

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.apps_rounded),
        title: Text('Jet News'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: bodyList,
      ),
    );
  }
}
