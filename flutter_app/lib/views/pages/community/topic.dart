import 'package:flutter/material.dart';

class TopicPage extends StatefulWidget {
  @override
  _TopicPageState createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
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
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('stellaris'),
              leading: CircleAvatar(child: Icon(Icons.people),),
              subtitle: Text('某年某月某日'),
            ),
            Container(
              width: double.infinity,
              child: Text('分享我的。。。'),
            ),
            Container(
              width: double.infinity,
              child: FlutterLogo(size: 200,),
            ),
            Divider(color: Colors.black,),
            Row(children: <Widget>[
              SizedBox(width: 250,),
              Container(width:20,child:FlatButton(child: Icon(Icons.collections_bookmark),onPressed: (){},)),
              SizedBox(width: 20,),
              Container(width:20,child:FlatButton(child: Icon(Icons.collections_bookmark),onPressed: (){},)),
            ],)
          ],
        ),
      ),
    ));
  }
}