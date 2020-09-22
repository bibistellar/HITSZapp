import 'package:flutter/material.dart';
import 'ExpePage.dart';
import 'RankPage.dart';
import 'SourcePage.dart';
import 'UpPage.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    var data = {
      Colors.red: Icons.search,
      Colors.blue: Icons.add,
    };
    return Scaffold(
      floatingActionButton: Wrap(
          spacing: 20,
          children: data.keys
              .map((e) => FloatingActionButton(
                    heroTag: e.toString() + "a",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return UpPage();
                      }));
                    },
                    backgroundColor: e,
                    foregroundColor: Colors.white,
                    child: Icon(data[e]),
                    tooltip: "android",
                    elevation: 5,
                  ))
              .toList()),
      appBar: AppBar(
        title: Text("社区"),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "经验",
            ),
            Tab(
              text: "资源",
            ),
            Tab(
              text: "排行",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[ExpePage(), SourcePage(), RankPage()],
      ),
    );
  }
}
