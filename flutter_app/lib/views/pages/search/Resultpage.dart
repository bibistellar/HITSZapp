import 'package:flutter/material.dart';
import 'package:flutter_app/Testdata/listData.dart';
import 'Topic.dart';

// ignore: camel_case_types
class resultPage extends StatefulWidget {
  resultPage({Key key}) : super(key: key);

  @override
  _resultPageState createState() => _resultPageState();
}

// ignore: camel_case_types
class _resultPageState extends State<resultPage> {
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
          title: Text('搜索结果'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                '找到以下结果：',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height-200,
                  child: ListView.builder(
                      itemCount: listData.length,
                      itemBuilder: (context, index) {
                        return FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return TopicPage( pictureUrl: listData[index]["imageUrl"],);
                              }));
                            },
                            child: ListTile(
                              title: Text(listData[index]["title"]),
                              leading:
                                  Image.network(listData[index]["imageUrl"]),
                              subtitle: Text(listData[index]["author"]),
                            ));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}