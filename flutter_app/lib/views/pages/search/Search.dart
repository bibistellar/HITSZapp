import 'package:flutter/material.dart';
import 'ResultPage.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: Text('搜题'),
      ),
      body: Search(),
    ));
  }
}

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String profession = '专业';
  String homeworkName = '作业名称';
  String chapter = '章节';
  String questionNumber = '题号';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
          child: Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  hintText: '请输入关键字',
                  prefixIcon: FlatButton(
                    child: Icon(Icons.search),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return resultPage();
                      }));
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height - 250,
          width: 350,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: PopupMenuButton(
                  child: Text(profession),
                  tooltip: "长按提示",
                  initialValue: "专业",
                  padding: EdgeInsets.all(0.0),
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                        child: Text("计算机"),
                        value: "计算机",
                      ),
                      PopupMenuItem<String>(
                        child: Text("机械"),
                        value: "机械",
                      ),
                    ];
                  },
                  onSelected: (String action) {
                    switch (action) {
                      case "计算机":
                        setState(() {
                          profession = '计算机';
                        });
                        break;
                      case "机械":
                        setState(() {
                          profession = '机械';
                        });
                        break;
                    }
                  },
                  onCanceled: () {
                    setState(() {
                      profession = '专业';
                    });
                  },
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: PopupMenuButton(
                    child: Text(homeworkName),
                    tooltip: "长按提示",
                    initialValue: "作业名称",
                    padding: EdgeInsets.all(0.0),
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuItem<String>>[
                        PopupMenuItem<String>(
                          child: Text("高等数学"),
                          value: "高等数学",
                        ),
                        PopupMenuItem<String>(
                          child: Text("数据结构"),
                          value: "数据结构",
                        ),
                      ];
                    },
                    onSelected: (String action) {
                      switch (action) {
                        case "高等数学":
                          setState(() {
                            homeworkName = '高等数学';
                          });
                          break;
                        case "数据结构":
                          setState(() {
                            homeworkName = '数据结构';
                          });
                          break;
                      }
                    },
                    onCanceled: () {
                      setState(() {
                        homeworkName = '作业名称';
                      });
                    },
                  )),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: PopupMenuButton(
                    child: Text(chapter),
                    tooltip: "长按提示",
                    initialValue: "章节",
                    padding: EdgeInsets.all(0.0),
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuItem<String>>[
                        PopupMenuItem<String>(
                          child: Text("第一章"),
                          value: "第一章",
                        ),
                        PopupMenuItem<String>(
                          child: Text("第二章"),
                          value: "第二章",
                        ),
                      ];
                    },
                    onSelected: (String action) {
                      switch (action) {
                        case "第一章":
                          setState(() {
                            chapter = '第一章';
                          });
                          break;
                        case "第二章":
                          setState(() {
                            chapter = '第二章';
                          });
                          break;
                      }
                    },
                    onCanceled: () {
                      setState(() {
                        chapter = '章节';
                      });
                    },
                  )),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: PopupMenuButton(
                  child: Text(questionNumber),
                  tooltip: "长按提示",
                  initialValue: "题号",
                  padding: EdgeInsets.all(0.0),
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                        child: Text("1"),
                        value: "1",
                      ),
                      PopupMenuItem<String>(
                        child: Text("2"),
                        value: "2",
                      ),
                    ];
                  },
                  onSelected: (String action) {
                    switch (action) {
                      case "1":
                        setState(() {
                          questionNumber = '1';
                        });
                        break;
                      case "2":
                        setState(() {
                          questionNumber = '2';
                        });
                        break;
                    }
                  },
                  onCanceled: () {
                    setState(() {
                      questionNumber = '题号';
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}