import 'package:first_ui/provider/list_provider.dart';
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

 @override
  void initState() {
    super.initState();
    Provider.of<ListProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
   ListProvider items = Provider.of<ListProvider>(context);
   //listProvider.listItems;
   if(items.isDone == true) {
     print("여기까지.." + items.listItems[0].publication.logoUrl);
   }

    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.apps_rounded),
            title: Text('Jet News'),
        ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8.0),
        itemCount: items.listItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Column(
              children: [
                Text('Top stories for you'),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

