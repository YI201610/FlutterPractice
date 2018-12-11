import 'package:flutter/material.dart';

class ImageSample1 extends StatefulWidget {
  final String title;

  /* Constructor */
  ImageSample1({Key key, this.title}) : super(key: key);

  @override
  ImageSample1State createState() => new ImageSample1State();
}

class ImageSample1State extends State<ImageSample1> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text(
              'Sample Image',
              style: Theme.of(context).textTheme.display1,
            ),

            Image.asset(
              'images/sandwich.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),

          ],
        ),

      ),

    );
  }
}
