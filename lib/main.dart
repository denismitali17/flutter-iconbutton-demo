// lib/main.dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IconButton Demo',
      debugShowCheckedModeBanner: false,
      home: IconButtonDemo(),
    );
  }
}

class IconButtonDemo extends StatefulWidget {
  @override
  _IconButtonDemoState createState() => _IconButtonDemoState();
}

class _IconButtonDemoState extends State<IconButtonDemo> {
  int likes = 0;

  void _incrementLikes() {
    setState(() {
      likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter IconButton Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You liked this $likes times.'),
            IconButton(
              icon: Icon(Icons.thumb_up),
              color: Colors.blue,
              iconSize: 40.0,
              onPressed: _incrementLikes,
              tooltip: 'Like',
            ),
          ],
        ),
      ),
    );
  }
}
