import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'ListView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    const items = <String>['第一項','第二項','第三項'];
    const icons = <String>['assets/11.png','assets/2.png','assets/33.png'];
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
    body: Center(
          child: ListView.separated(
          itemCount: items.length,
              itemBuilder: (context,index) =>
          ListTile(title:Text(items[index], style: TextStyle(fontSize: 20),),
        onTap: () => Text('點選' + items[index]),
        leading: Container(
        child: CircleAvatar(backgroundImage: AssetImage(icons[index],),),
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),),
        subtitle: Text('每項說明',style: TextStyle(fontSize: 16),),),
        separatorBuilder: (context, index) => Divider(),
    )
    ),
    );
  }
}
