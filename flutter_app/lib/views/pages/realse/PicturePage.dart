import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class PicturePage extends StatefulWidget {
  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<PicturePage> {
  String profession = '专业';
  String homeworkName = '作业名称';
  String chapter = '章节';
  String questionNumber = '题号';
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('发布题目'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height/15*14,
          child: Column(children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height/15,
          child: _image == null
              ? FlatButton(
                  child: Text('点击“+”添加题目图片'),
                  onPressed: getImage,
                )
              : Image.file(_image),
        ),
       Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height/15*12,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height:MediaQuery.of(context).size.height/30,
                child: Text('请选择相应的tag标签'),
                alignment: Alignment.centerLeft,
              ),
              Row(
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
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height/15*10,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                  minLines: 20,
                  maxLines: 20,
                ),
              ),
            ],
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Pick Image',
        child: Text(
          '发布',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}