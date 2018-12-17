import 'package:flutter/material.dart';

class SpaceEvenlyImagesRowPage extends StatefulWidget {
  SpaceEvenlyImagesRowPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SpaceEvenlyImagesRowPageState createState() => _SpaceEvenlyImagesRowPageState();
}

class _SpaceEvenlyImagesRowPageState extends State<SpaceEvenlyImagesRowPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/thumbnail/sandwich.jpg'),
                  Image.asset('images/thumbnail/autumn-table1.jpg'),
                  Image.asset('images/thumbnail/autumn-tree1.jpg'),
                ],
              ),
            ),
    );
  }
}