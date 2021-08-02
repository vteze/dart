import 'package:flutter/material.dart';
import 'package:greeting/greeting.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Greeting g = Greeting();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(g.salutation, key: ValueKey('value')),
        ),
      ),
    );
  }
}