import 'package:flutter/material.dart';

class SpaceEvenlyImagesColumnPage extends StatefulWidget {
  SpaceEvenlyImagesColumnPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SpaceEvenlyImagesColumnPageState createState() => _SpaceEvenlyImagesColumnPageState();
}

class _SpaceEvenlyImagesColumnPageState extends State<SpaceEvenlyImagesColumnPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/thumbnail/sandwich-100.jpg'),
            Image.asset('images/thumbnail/autumn-table1-100.jpg'),
            Image.asset('images/thumbnail/autumn-tree1-100.jpg'),
          ],
        ),
      ),

    );
  }
}