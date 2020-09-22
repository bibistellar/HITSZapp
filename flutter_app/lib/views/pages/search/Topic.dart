import 'package:flutter/material.dart';
import 'package:flutter_app/Testdata/listData.dart';

class TopicPage extends StatelessWidget {
  String pictureUrl;
  TopicPage({Key key, @required String this.pictureUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('看题'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: '搜索....',
                  prefixIcon: FlatButton(
                    onPressed: (){},
                    child: Icon(Icons.search),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            ListTile(
              title: Text('stellaris'),
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              subtitle: Text('某年某月某日'),
            ),
            Container(
              width: double.infinity,
              child: Text('这道题我不会啊'),
            ),
            Container(
              width: double.infinity,
              child: Image.network(pictureUrl),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 250,
                ),
                Container(
                    width: 20,
                    child: FlatButton(
                      child: Icon(Icons.collections_bookmark),
                      onPressed: () {},
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 20,
                    child: FlatButton(
                      child: Icon(Icons.collections_bookmark),
                      onPressed: () {},
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}