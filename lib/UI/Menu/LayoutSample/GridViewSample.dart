import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class GridViewSamplePage extends StatefulWidget {
  GridViewSamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GridViewSamplePageState createState() => _GridViewSamplePageState();
}

List<Container> _buildGridTileList(int count) {

  List<Container> containers = <Container>[];

  containers.add(Container(child: Image.asset('images/sandwich.jpg')));
  containers.add(Container(child: Image.asset('images/autumn-table1.jpg')));
  containers.add(Container(child: Image.asset('images/autumn-tree1.jpg')));
  containers.add(Container(child: Image.asset('images/sandwich.jpg')));
  containers.add(Container(child: Image.asset('images/autumn-table1.jpg')));
  containers.add(Container(child: Image.asset('images/autumn-tree1.jpg')));

  return containers;

}

Widget buildGrid() {
  return GridView.extent(
      maxCrossAxisExtent: 123.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTileList(30));
}

class _GridViewSamplePageState extends State<GridViewSamplePage> {
  @override
  Widget build(BuildContext context) {

    debugPaintSizeEnabled = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}