import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.blue,
            child: Container(
              child: Text('CHART placeholder'),
              width: 200.0, // double.infinity
            ),
            elevation: 5.0,
          ),
          Card(
            child: Text('LIST placeholder!'),
          ),
        ],
      ),
    );
  }
}
