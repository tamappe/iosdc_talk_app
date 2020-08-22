import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iOSDC 2020 App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'iOSDC 2020 App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var i = 1; i <= 25; i++) {
      var widget = Center(child: Text('$i'));
      list.add(widget);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '現在の値',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text('1'),
                )
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 5,
              children: list,
            )
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;

  NumberButton(this.number);

  @override
  Widget build(BuildContext context) {
    return Center(child: FlatButton(child: Text('$number')));
  }
}
