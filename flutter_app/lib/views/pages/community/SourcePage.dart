import 'package:flutter/material.dart';
import 'package:flutter_app/Testdata/listData.dart';
import 'topic.dart';

class SourcePage extends StatefulWidget {
  @override
  _SourcePageState createState() => _SourcePageState();
}

class _SourcePageState extends State<SourcePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                padding: EdgeInsets.all(20),
                child: Column(children: <Widget>[
                  SizedBox(
                      height: MediaQuery.of(context).size.height - 200,
                      child: ListView.builder(
                          itemCount: listData.length,
                          itemBuilder: (context, index) {
                            return FlatButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TopicPage();
                                  }));
                                },
                                child: ListTile(
                                  title: Text(listData[index]["title"]),
                                  subtitle: Text(listData[index]["author"]),
                                ));
                          }))
                ]))));
  }
}
