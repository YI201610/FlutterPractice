import 'package:flutter/material.dart';

class BuildingALayoutTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'タイトルテキスト',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'サブテキスト',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColorDark;

      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, '電話'),
          buildButtonColumn(Icons.near_me, '位置情報'),
          buildButtonColumn(Icons.share, '共有'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        '''
複数行のテキスト。行1。       
複数行のテキスト。行2。       
複数行のテキスト。行3。       
複数行のテキスト。行4。       
複数行のテキスト。行5。       
        ''',
        softWrap: true,
      ),
    );

    return new Scaffold(
      appBar: AppBar(
        title: Text('Building A Layout Sample'),
      ),
      body: ListView(
        children: [

          Image.asset(
            'images/sandwich.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),

          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );

  }
}