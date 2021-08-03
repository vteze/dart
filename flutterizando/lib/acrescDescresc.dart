import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Primeiro APP do Vitu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterInc = 0;
  int _counterDec = 0;

  void _incrementCounter() {
    setState(() {
      _counterInc++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counterDec++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the increment this times: ',
            ),
            Text(
              '$_counterInc',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'You have pushed the decrement this times: ',
            ),
            Text(
              '$_counterDec',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.arrow_upward_sharp),
          ),
          SizedBox(
            width: 10.0,// This trailing comma makes auto-formatting nicer for build methods.
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.arrow_downward_sharp),
          ),
        ],
      ),
    );
  }
}