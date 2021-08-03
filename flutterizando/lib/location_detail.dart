import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('HI'),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('HI'),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('HI'),
          ),
        ],
      ),
    );
  }
}
