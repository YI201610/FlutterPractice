import 'package:flutter/material.dart';

class SimpleCardSamplePage extends StatefulWidget {
  SimpleCardSamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SimpleCardSamplePageState createState() => _SimpleCardSamplePageState();
}

class _SimpleCardSamplePageState extends State<SimpleCardSamplePage> {

  @override
  Widget build(BuildContext context) {

    var card = SizedBox(

      height: 210.0,

      child: Card(

        child: Column(

          /*Cardは、1つのChildrenを持つ。*/
          children: [

            ListTile(
              title: Text('1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),

            Divider(),

            ListTile(
              title: Text('(408) 555-1212',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),

            ListTile(
              title: Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: card,
      ),
    );
  }
}