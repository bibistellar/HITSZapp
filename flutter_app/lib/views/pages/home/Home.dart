import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../search/Search.dart';
import '../community/Community.dart';
import '../realse/PicturePage.dart';
import 'package:flutter_app/Testdata/listData.dart';
import 'package:flutter_app/views/pages/search/Topic.dart';

class Button extends StatelessWidget {
  const Button({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('快来帮助小萌新吧！q(≧▽≦q)'),
      Container(
        height: MediaQuery.of(context).size.height/11*8,
            child: Container(
              height:50,
              child:ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TopicPage(
                            pictureUrl: listData[index]["imageUrl"],
                          );
                        }));
                      },
                      child: ListTile(
                        title: Text(listData[index]["title"]),
                        leading: Image.network(listData[index]["imageUrl"]),
                        subtitle: Text(listData[index]["author"]),
                      ));
                })),
      ),
      Divider(
        color: Colors.black,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/11,
            //width: 150,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 40,
                  ),
                  Text(
                    '搜题',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
            ),
          ),
          Container(
            //width: 150,
            height: MediaQuery.of(context).size.height/11,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.people,
                    size: 40,
                  ),
                  Text(
                    '社区',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CommunityPage();
                }));
              },
            ),
          ),
          Container(
            //width: 150,
            height:MediaQuery.of(context).size.height/11,
            child: FlatButton(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.camera_alt,
                    size: 40,
                  ),
                  Text(
                    '拍题发布',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PicturePage();
                }));
              },
            ),
          ),
        ],
      )
    ]);
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '底部导航演示',
        home: Scaffold(
            appBar: AppBar(
              title: Text("主页"),
            ),
            body: Button()));
  }
}
